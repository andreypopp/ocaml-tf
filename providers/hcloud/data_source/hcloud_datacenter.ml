(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type hcloud_datacenter = {
  id : float prop option; [@option]
  name : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : hcloud_datacenter) -> ()

let yojson_of_hcloud_datacenter =
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
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : hcloud_datacenter -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_hcloud_datacenter

[@@@deriving.end]

let hcloud_datacenter ?id ?name () : hcloud_datacenter = { id; name }

type t = {
  tf_name : string;
  available_server_type_ids : float list prop;
  description : string prop;
  id : float prop;
  location : string Tf_core.assoc prop;
  name : string prop;
  supported_server_type_ids : float list prop;
}

let make ?id ?name __id =
  let __type = "hcloud_datacenter" in
  let __attrs =
    ({
       tf_name = __id;
       available_server_type_ids =
         Prop.computed __type __id "available_server_type_ids";
       description = Prop.computed __type __id "description";
       id = Prop.computed __type __id "id";
       location = Prop.computed __type __id "location";
       name = Prop.computed __type __id "name";
       supported_server_type_ids =
         Prop.computed __type __id "supported_server_type_ids";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_hcloud_datacenter (hcloud_datacenter ?id ?name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?name __id =
  let (r : _ Tf_core.resource) = make ?id ?name __id in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
