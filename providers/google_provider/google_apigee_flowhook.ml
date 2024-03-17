(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_apigee_flowhook__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
}
[@@deriving yojson_of]
(** google_apigee_flowhook__timeouts *)

type google_apigee_flowhook = {
  continue_on_error : bool option; [@option]
      (** Flag that specifies whether execution should continue if the flow hook throws an exception. Set to true to continue execution. Set to false to stop execution if the flow hook throws an exception. Defaults to true. *)
  description : string option; [@option]
      (** Description of the flow hook. *)
  environment : string;  (** The resource ID of the environment. *)
  flow_hook_point : string;
      (** Where in the API call flow the flow hook is invoked. Must be one of PreProxyFlowHook, PostProxyFlowHook, PreTargetFlowHook, or PostTargetFlowHook. *)
  org_id : string;
      (** The Apigee Organization associated with the environment *)
  sharedflow : string;
      (** Id of the Sharedflow attaching to a flowhook point. *)
  timeouts : google_apigee_flowhook__timeouts option;
}
[@@deriving yojson_of]
(** google_apigee_flowhook *)

let google_apigee_flowhook ?continue_on_error ?description ?timeouts
    ~environment ~flow_hook_point ~org_id ~sharedflow __resource_id =
  let __resource_type = "google_apigee_flowhook" in
  let __resource =
    {
      continue_on_error;
      description;
      environment;
      flow_hook_point;
      org_id;
      sharedflow;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_apigee_flowhook __resource);
  ()
