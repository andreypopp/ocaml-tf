(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type okta_app_oauth_role_assignment = {
  client_id : string prop;
  resource_set : string prop option; [@option]
  role : string prop option; [@option]
  type_ : string prop; [@key "type"]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : okta_app_oauth_role_assignment) -> ()

let yojson_of_okta_app_oauth_role_assignment =
  (function
   | {
       client_id = v_client_id;
       resource_set = v_resource_set;
       role = v_role;
       type_ = v_type_;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_type_ in
         ("type", arg) :: bnds
       in
       let bnds =
         match v_role with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "role", arg in
             bnd :: bnds
       in
       let bnds =
         match v_resource_set with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "resource_set", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_client_id in
         ("client_id", arg) :: bnds
       in
       `Assoc bnds
    : okta_app_oauth_role_assignment ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_okta_app_oauth_role_assignment

[@@@deriving.end]

let okta_app_oauth_role_assignment ?resource_set ?role ~client_id
    ~type_ () : okta_app_oauth_role_assignment =
  { client_id; resource_set; role; type_ }

type t = {
  tf_name : string;
  client_id : string prop;
  id : string prop;
  label : string prop;
  resource_set : string prop;
  role : string prop;
  status : string prop;
  type_ : string prop;
}

let make ?resource_set ?role ~client_id ~type_ __id =
  let __type = "okta_app_oauth_role_assignment" in
  let __attrs =
    ({
       tf_name = __id;
       client_id = Prop.computed __type __id "client_id";
       id = Prop.computed __type __id "id";
       label = Prop.computed __type __id "label";
       resource_set = Prop.computed __type __id "resource_set";
       role = Prop.computed __type __id "role";
       status = Prop.computed __type __id "status";
       type_ = Prop.computed __type __id "type";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_okta_app_oauth_role_assignment
        (okta_app_oauth_role_assignment ?resource_set ?role
           ~client_id ~type_ ());
    attrs = __attrs;
  }

let register ?tf_module ?resource_set ?role ~client_id ~type_ __id =
  let (r : _ Tf_core.resource) =
    make ?resource_set ?role ~client_id ~type_ __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
