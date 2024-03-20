(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
}
[@@deriving yojson_of]
(** timeouts *)

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
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** google_apigee_flowhook *)

let timeouts ?create ?delete () : timeouts = { create; delete }

let google_apigee_flowhook ?continue_on_error ?description ?id
    ?timeouts ~environment ~flow_hook_point ~org_id ~sharedflow () :
    google_apigee_flowhook =
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

type t = {
  continue_on_error : bool prop;
  description : string prop;
  environment : string prop;
  flow_hook_point : string prop;
  id : string prop;
  org_id : string prop;
  sharedflow : string prop;
}

let make ?continue_on_error ?description ?id ?timeouts ~environment
    ~flow_hook_point ~org_id ~sharedflow __id =
  let __type = "google_apigee_flowhook" in
  let __attrs =
    ({
       continue_on_error =
         Prop.computed __type __id "continue_on_error";
       description = Prop.computed __type __id "description";
       environment = Prop.computed __type __id "environment";
       flow_hook_point = Prop.computed __type __id "flow_hook_point";
       id = Prop.computed __type __id "id";
       org_id = Prop.computed __type __id "org_id";
       sharedflow = Prop.computed __type __id "sharedflow";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_apigee_flowhook
        (google_apigee_flowhook ?continue_on_error ?description ?id
           ?timeouts ~environment ~flow_hook_point ~org_id
           ~sharedflow ());
    attrs = __attrs;
  }

let register ?tf_module ?continue_on_error ?description ?id ?timeouts
    ~environment ~flow_hook_point ~org_id ~sharedflow __id =
  let (r : _ Tf_core.resource) =
    make ?continue_on_error ?description ?id ?timeouts ~environment
      ~flow_hook_point ~org_id ~sharedflow __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
