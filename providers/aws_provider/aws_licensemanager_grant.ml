(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_licensemanager_grant = {
  allowed_operations : string prop list;
      (** Allowed operations for the grant. This is a subset of the allowed operations on the license. *)
  id : string prop option; [@option]  (** id *)
  license_arn : string prop;  (** License ARN. *)
  name : string prop;  (** Name of the grant. *)
  principal : string prop;
      (** The grantee principal ARN. The target account for the grant in the form of the ARN for an account principal of the root user. *)
}
[@@deriving yojson_of]
(** aws_licensemanager_grant *)

type t = {
  allowed_operations : string list prop;
  arn : string prop;
  home_region : string prop;
  id : string prop;
  license_arn : string prop;
  name : string prop;
  parent_arn : string prop;
  principal : string prop;
  status : string prop;
  version : string prop;
}

let aws_licensemanager_grant ?id ~allowed_operations ~license_arn
    ~name ~principal __resource_id =
  let __resource_type = "aws_licensemanager_grant" in
  let __resource =
    ({ allowed_operations; id; license_arn; name; principal }
      : aws_licensemanager_grant)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_licensemanager_grant __resource);
  let __resource_attributes =
    ({
       allowed_operations =
         Prop.computed __resource_type __resource_id
           "allowed_operations";
       arn = Prop.computed __resource_type __resource_id "arn";
       home_region =
         Prop.computed __resource_type __resource_id "home_region";
       id = Prop.computed __resource_type __resource_id "id";
       license_arn =
         Prop.computed __resource_type __resource_id "license_arn";
       name = Prop.computed __resource_type __resource_id "name";
       parent_arn =
         Prop.computed __resource_type __resource_id "parent_arn";
       principal =
         Prop.computed __resource_type __resource_id "principal";
       status = Prop.computed __resource_type __resource_id "status";
       version =
         Prop.computed __resource_type __resource_id "version";
     }
      : t)
  in
  __resource_attributes
