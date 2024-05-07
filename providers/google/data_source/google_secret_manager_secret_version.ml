(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type google_secret_manager_secret_version = {
  id : string prop option; [@option]
  project : string prop option; [@option]
  secret : string prop;
  version : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_secret_manager_secret_version) -> ()

let yojson_of_google_secret_manager_secret_version =
  (function
   | {
       id = v_id;
       project = v_project;
       secret = v_secret;
       version = v_version;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_version with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "version", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_secret in
         ("secret", arg) :: bnds
       in
       let bnds =
         match v_project with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "project", arg in
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
       `Assoc bnds
    : google_secret_manager_secret_version ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_secret_manager_secret_version

[@@@deriving.end]

let google_secret_manager_secret_version ?id ?project ?version
    ~secret () : google_secret_manager_secret_version =
  { id; project; secret; version }

type t = {
  tf_name : string;
  create_time : string prop;
  destroy_time : string prop;
  enabled : bool prop;
  id : string prop;
  name : string prop;
  project : string prop;
  secret : string prop;
  secret_data : string prop;
  version : string prop;
}

let make ?id ?project ?version ~secret __id =
  let __type = "google_secret_manager_secret_version" in
  let __attrs =
    ({
       tf_name = __id;
       create_time = Prop.computed __type __id "create_time";
       destroy_time = Prop.computed __type __id "destroy_time";
       enabled = Prop.computed __type __id "enabled";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       project = Prop.computed __type __id "project";
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
        (google_secret_manager_secret_version ?id ?project ?version
           ~secret ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?project ?version ~secret __id =
  let (r : _ Tf_core.resource) =
    make ?id ?project ?version ~secret __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
