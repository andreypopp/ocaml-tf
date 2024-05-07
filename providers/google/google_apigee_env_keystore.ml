(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]
  delete : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | { create = v_create; delete = v_delete } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
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

type google_apigee_env_keystore = {
  env_id : string prop;
  id : string prop option; [@option]
  name : string prop option; [@option]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_apigee_env_keystore) -> ()

let yojson_of_google_apigee_env_keystore =
  (function
   | {
       env_id = v_env_id;
       id = v_id;
       name = v_name;
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
         match v_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "name", arg in
             bnd :: bnds
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
         let arg = yojson_of_prop yojson_of_string v_env_id in
         ("env_id", arg) :: bnds
       in
       `Assoc bnds
    : google_apigee_env_keystore -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_apigee_env_keystore

[@@@deriving.end]

let timeouts ?create ?delete () : timeouts = { create; delete }

let google_apigee_env_keystore ?id ?name ?timeouts ~env_id () :
    google_apigee_env_keystore =
  { env_id; id; name; timeouts }

type t = {
  tf_name : string;
  aliases : string list prop;
  env_id : string prop;
  id : string prop;
  name : string prop;
}

let make ?id ?name ?timeouts ~env_id __id =
  let __type = "google_apigee_env_keystore" in
  let __attrs =
    ({
       tf_name = __id;
       aliases = Prop.computed __type __id "aliases";
       env_id = Prop.computed __type __id "env_id";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_apigee_env_keystore
        (google_apigee_env_keystore ?id ?name ?timeouts ~env_id ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?name ?timeouts ~env_id __id =
  let (r : _ Tf_core.resource) =
    make ?id ?name ?timeouts ~env_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
