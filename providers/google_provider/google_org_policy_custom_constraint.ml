(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_org_policy_custom_constraint__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** google_org_policy_custom_constraint__timeouts *)

type google_org_policy_custom_constraint = {
  action_type : string prop;
      (** The action to take if the condition is met. Possible values: [ALLOW, DENY] *)
  condition : string prop;
      (** A CEL condition that refers to a supported service resource, for example 'resource.management.autoUpgrade == false'. For details about CEL usage, see [Common Expression Language](https://cloud.google.com/resource-manager/docs/organization-policy/creating-managing-custom-constraints#common_expression_language). *)
  description : string prop option; [@option]
      (** A human-friendly description of the constraint to display as an error message when the policy is violated. *)
  display_name : string prop option; [@option]
      (** A human-friendly name for the constraint. *)
  id : string prop option; [@option]  (** id *)
  method_types : string prop list;
      (** A list of RESTful methods for which to enforce the constraint. Can be 'CREATE', 'UPDATE', or both. Not all Google Cloud services support both methods. To see supported methods for each service, find the service in [Supported services](https://cloud.google.com/resource-manager/docs/organization-policy/custom-constraint-supported-services). *)
  name : string prop;
      (** Immutable. The name of the custom constraint. This is unique within the organization. *)
  parent : string prop;
      (** The parent of the resource, an organization. Format should be 'organizations/{organization_id}'. *)
  resource_types : string prop list;
      (** Immutable. The fully qualified name of the Google Cloud REST resource containing the object and field you want to restrict. For example, 'container.googleapis.com/NodePool'. *)
  timeouts : google_org_policy_custom_constraint__timeouts option;
}
[@@deriving yojson_of]
(** google_org_policy_custom_constraint *)

let google_org_policy_custom_constraint ?description ?display_name
    ?id ?timeouts ~action_type ~condition ~method_types ~name ~parent
    ~resource_types __resource_id =
  let __resource_type = "google_org_policy_custom_constraint" in
  let __resource =
    {
      action_type;
      condition;
      description;
      display_name;
      id;
      method_types;
      name;
      parent;
      resource_types;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_org_policy_custom_constraint __resource);
  ()
