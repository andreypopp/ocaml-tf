(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type digitalocean_project = {
  id : string prop option; [@option]
  name : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : digitalocean_project) -> ()

let yojson_of_digitalocean_project =
  (function
   | { id = v_id; name = v_name } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
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
       `Assoc bnds
    : digitalocean_project -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_digitalocean_project

[@@@deriving.end]

let digitalocean_project ?id ?name () : digitalocean_project =
  { id; name }

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

let make ?id ?name __id =
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
        (digitalocean_project ?id ?name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?name __id =
  let (r : _ Tf_core.resource) = make ?id ?name __id in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
