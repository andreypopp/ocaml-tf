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

type google_apigee_env_references = {
  description : string prop option; [@option]
  env_id : string prop;
  id : string prop option; [@option]
  name : string prop;
  refers : string prop;
  resource_type : string prop;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_apigee_env_references) -> ()

let yojson_of_google_apigee_env_references =
  (function
   | {
       description = v_description;
       env_id = v_env_id;
       id = v_id;
       name = v_name;
       refers = v_refers;
       resource_type = v_resource_type;
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
         let arg = yojson_of_prop yojson_of_string v_resource_type in
         ("resource_type", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_refers in
         ("refers", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
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
       let bnds =
         match v_description with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "description", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : google_apigee_env_references ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_apigee_env_references

[@@@deriving.end]

let timeouts ?create ?delete () : timeouts = { create; delete }

let google_apigee_env_references ?description ?id ?timeouts ~env_id
    ~name ~refers ~resource_type () : google_apigee_env_references =
  { description; env_id; id; name; refers; resource_type; timeouts }

type t = {
  tf_name : string;
  description : string prop;
  env_id : string prop;
  id : string prop;
  name : string prop;
  refers : string prop;
  resource_type : string prop;
}

let make ?description ?id ?timeouts ~env_id ~name ~refers
    ~resource_type __id =
  let __type = "google_apigee_env_references" in
  let __attrs =
    ({
       tf_name = __id;
       description = Prop.computed __type __id "description";
       env_id = Prop.computed __type __id "env_id";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       refers = Prop.computed __type __id "refers";
       resource_type = Prop.computed __type __id "resource_type";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_apigee_env_references
        (google_apigee_env_references ?description ?id ?timeouts
           ~env_id ~name ~refers ~resource_type ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?id ?timeouts ~env_id ~name
    ~refers ~resource_type __id =
  let (r : _ Tf_core.resource) =
    make ?description ?id ?timeouts ~env_id ~name ~refers
      ~resource_type __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
