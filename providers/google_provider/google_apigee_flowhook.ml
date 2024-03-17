(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_apigee_flowhook__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
}
[@@deriving yojson_of]
(** google_apigee_flowhook__timeouts *)

type google_apigee_flowhook = {
  continue_on_error : bool prop option; [@option]
      (** Flag that specifies whether execution should continue if the flow hook throws an exception. Set to true to continue execution. Set to false to stop execution if the flow hook throws an exception. Defaults to true. *)
  description : string prop option; [@option]
      (** Description of the flow hook. *)
  environment : string prop;
      (** The resource ID of the environment. *)
  flow_hook_point : string prop;
      (** Where in the API call flow the flow hook is invoked. Must be one of PreProxyFlowHook, PostProxyFlowHook, PreTargetFlowHook, or PostTargetFlowHook. *)
  id : string prop option; [@option]  (** id *)
  org_id : string prop;
      (** The Apigee Organization associated with the environment *)
  sharedflow : string prop;
      (** Id of the Sharedflow attaching to a flowhook point. *)
  timeouts : google_apigee_flowhook__timeouts option;
}
[@@deriving yojson_of]
(** google_apigee_flowhook *)

let google_apigee_flowhook ?continue_on_error ?description ?id
    ?timeouts ~environment ~flow_hook_point ~org_id ~sharedflow
    __resource_id =
  let __resource_type = "google_apigee_flowhook" in
  let __resource =
    {
      continue_on_error;
      description;
      environment;
      flow_hook_point;
      id;
      org_id;
      sharedflow;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_apigee_flowhook __resource);
  ()
