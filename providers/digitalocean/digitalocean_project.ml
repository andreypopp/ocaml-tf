(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = { delete : string prop option [@option] }
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | { delete = v_delete } ->
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
       `Assoc bnds
    : timeouts -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_timeouts

[@@@deriving.end]

type digitalocean_project = {
  description : string prop option; [@option]
  environment : string prop option; [@option]
  id : string prop option; [@option]
  is_default : bool prop option; [@option]
  name : string prop;
  purpose : string prop option; [@option]
  resources : string prop list option; [@option]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : digitalocean_project) -> ()

let yojson_of_digitalocean_project =
  (function
   | {
       description = v_description;
       environment = v_environment;
       id = v_id;
       is_default = v_is_default;
       name = v_name;
       purpose = v_purpose;
       resources = v_resources;
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
         match v_resources with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "resources", arg in
             bnd :: bnds
       in
       let bnds =
         match v_purpose with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "purpose", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         match v_is_default with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "is_default", arg in
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
         match v_environment with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "environment", arg in
             bnd :: bnds
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
    : digitalocean_project -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_digitalocean_project

[@@@deriving.end]

let timeouts ?delete () : timeouts = { delete }

let digitalocean_project ?description ?environment ?id ?is_default
    ?purpose ?resources ?timeouts ~name () : digitalocean_project =
  {
    description;
    environment;
    id;
    is_default;
    name;
    purpose;
    resources;
    timeouts;
  }

type t = {
  tf_name : string;
  created_at : string prop;
  description : string prop;
  environment : string prop;
  id : string prop;
  is_default : bool prop;
  name : string prop;
  owner_id : float prop;
  owner_uuid : string prop;
  purpose : string prop;
  resources : string list prop;
  updated_at : string prop;
}

let make ?description ?environment ?id ?is_default ?purpose
    ?resources ?timeouts ~name __id =
  let __type = "digitalocean_project" in
  let __attrs =
    ({
       tf_name = __id;
       created_at = Prop.computed __type __id "created_at";
       description = Prop.computed __type __id "description";
       environment = Prop.computed __type __id "environment";
       id = Prop.computed __type __id "id";
       is_default = Prop.computed __type __id "is_default";
       name = Prop.computed __type __id "name";
       owner_id = Prop.computed __type __id "owner_id";
       owner_uuid = Prop.computed __type __id "owner_uuid";
       purpose = Prop.computed __type __id "purpose";
       resources = Prop.computed __type __id "resources";
       updated_at = Prop.computed __type __id "updated_at";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_digitalocean_project
        (digitalocean_project ?description ?environment ?id
           ?is_default ?purpose ?resources ?timeouts ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?environment ?id ?is_default
    ?purpose ?resources ?timeouts ~name __id =
  let (r : _ Tf_core.resource) =
    make ?description ?environment ?id ?is_default ?purpose
      ?resources ?timeouts ~name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
