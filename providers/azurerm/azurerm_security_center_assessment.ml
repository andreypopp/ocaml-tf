(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type status = {
  cause : string prop option; [@option]
  code : string prop;
  description : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : status) -> ()

let yojson_of_status =
  (function
   | { cause = v_cause; code = v_code; description = v_description }
     ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_description with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "description", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_code in
         ("code", arg) :: bnds
       in
       let bnds =
         match v_cause with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "cause", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : status -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_status

[@@@deriving.end]

type timeouts = {
  create : string prop option; [@option]
  delete : string prop option; [@option]
  read : string prop option; [@option]
  update : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | {
       create = v_create;
       delete = v_delete;
       read = v_read;
       update = v_update;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_update with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "update", arg in
             bnd :: bnds
       in
       let bnds =
         match v_read with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "read", arg in
             bnd :: bnds
       in
       let bnds =
         match v_delete with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "delete", arg in
             bnd :: bnds
       in
       let bnds =
         match v_create with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "create", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : timeouts -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_timeouts

[@@@deriving.end]

type azurerm_security_center_assessment = {
  additional_data : (string * string prop) list option; [@option]
  assessment_policy_id : string prop;
  id : string prop option; [@option]
  target_resource_id : string prop;
  status : status list;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_security_center_assessment) -> ()

let yojson_of_azurerm_security_center_assessment =
  (function
   | {
       additional_data = v_additional_data;
       assessment_policy_id = v_assessment_policy_id;
       id = v_id;
       target_resource_id = v_target_resource_id;
       status = v_status;
       timeouts = v_timeouts;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_option yojson_of_timeouts v_timeouts in
         ("timeouts", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_list yojson_of_status v_status in
         ("status", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_target_resource_id
         in
         ("target_resource_id", arg) :: bnds
       in
       let bnds =
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_assessment_policy_id
         in
         ("assessment_policy_id", arg) :: bnds
       in
       let bnds =
         match v_additional_data with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list
                 (function
                   | v0, v1 ->
                       let v0 = yojson_of_string v0
                       and v1 = yojson_of_prop yojson_of_string v1 in
                       `List [ v0; v1 ])
                 v
             in
             let bnd = "additional_data", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : azurerm_security_center_assessment ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_security_center_assessment

[@@@deriving.end]

let status ?cause ?description ~code () : status =
  { cause; code; description }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_security_center_assessment ?additional_data ?id ?timeouts
    ~assessment_policy_id ~target_resource_id ~status () :
    azurerm_security_center_assessment =
  {
    additional_data;
    assessment_policy_id;
    id;
    target_resource_id;
    status;
    timeouts;
  }

type t = {
  tf_name : string;
  additional_data : (string * string) list prop;
  assessment_policy_id : string prop;
  id : string prop;
  target_resource_id : string prop;
}

let make ?additional_data ?id ?timeouts ~assessment_policy_id
    ~target_resource_id ~status __id =
  let __type = "azurerm_security_center_assessment" in
  let __attrs =
    ({
       tf_name = __id;
       additional_data = Prop.computed __type __id "additional_data";
       assessment_policy_id =
         Prop.computed __type __id "assessment_policy_id";
       id = Prop.computed __type __id "id";
       target_resource_id =
         Prop.computed __type __id "target_resource_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_security_center_assessment
        (azurerm_security_center_assessment ?additional_data ?id
           ?timeouts ~assessment_policy_id ~target_resource_id
           ~status ());
    attrs = __attrs;
  }

let register ?tf_module ?additional_data ?id ?timeouts
    ~assessment_policy_id ~target_resource_id ~status __id =
  let (r : _ Tf_core.resource) =
    make ?additional_data ?id ?timeouts ~assessment_policy_id
      ~target_resource_id ~status __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
