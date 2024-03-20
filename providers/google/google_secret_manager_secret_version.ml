(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]
  delete : string prop option; [@option]
  update : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | { create = v_create; delete = v_delete; update = v_update } ->
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

type google_secret_manager_secret_version = {
  deletion_policy : string prop option; [@option]
  enabled : bool prop option; [@option]
  id : string prop option; [@option]
  is_secret_data_base64 : bool prop option; [@option]
  secret : string prop;
  secret_data : string prop;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_secret_manager_secret_version) -> ()

let yojson_of_google_secret_manager_secret_version =
  (function
   | {
       deletion_policy = v_deletion_policy;
       enabled = v_enabled;
       id = v_id;
       is_secret_data_base64 = v_is_secret_data_base64;
       secret = v_secret;
       secret_data = v_secret_data;
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
         let arg = yojson_of_prop yojson_of_string v_secret_data in
         ("secret_data", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_secret in
         ("secret", arg) :: bnds
       in
       let bnds =
         match v_is_secret_data_base64 with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "is_secret_data_base64", arg in
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
         match v_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "enabled", arg in
             bnd :: bnds
       in
       let bnds =
         match v_deletion_policy with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "deletion_policy", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : google_secret_manager_secret_version ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_secret_manager_secret_version

[@@@deriving.end]

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let google_secret_manager_secret_version ?deletion_policy ?enabled
    ?id ?is_secret_data_base64 ?timeouts ~secret ~secret_data () :
    google_secret_manager_secret_version =
  {
    deletion_policy;
    enabled;
    id;
    is_secret_data_base64;
    secret;
    secret_data;
    timeouts;
  }

type t = {
  create_time : string prop;
  deletion_policy : string prop;
  destroy_time : string prop;
  enabled : bool prop;
  id : string prop;
  is_secret_data_base64 : bool prop;
  name : string prop;
  secret : string prop;
  secret_data : string prop;
  version : string prop;
}

let make ?deletion_policy ?enabled ?id ?is_secret_data_base64
    ?timeouts ~secret ~secret_data __id =
  let __type = "google_secret_manager_secret_version" in
  let __attrs =
    ({
       create_time = Prop.computed __type __id "create_time";
       deletion_policy = Prop.computed __type __id "deletion_policy";
       destroy_time = Prop.computed __type __id "destroy_time";
       enabled = Prop.computed __type __id "enabled";
       id = Prop.computed __type __id "id";
       is_secret_data_base64 =
         Prop.computed __type __id "is_secret_data_base64";
       name = Prop.computed __type __id "name";
       secret = Prop.computed __type __id "secret";
       secret_data = Prop.computed __type __id "secret_data";
       version = Prop.computed __type __id "version";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_secret_manager_secret_version
        (google_secret_manager_secret_version ?deletion_policy
           ?enabled ?id ?is_secret_data_base64 ?timeouts ~secret
           ~secret_data ());
    attrs = __attrs;
  }

let register ?tf_module ?deletion_policy ?enabled ?id
    ?is_secret_data_base64 ?timeouts ~secret ~secret_data __id =
  let (r : _ Tf_core.resource) =
    make ?deletion_policy ?enabled ?id ?is_secret_data_base64
      ?timeouts ~secret ~secret_data __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
