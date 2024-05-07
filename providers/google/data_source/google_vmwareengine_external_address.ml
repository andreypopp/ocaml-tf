(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type google_vmwareengine_external_address = {
  id : string prop option; [@option]
  name : string prop;
  parent : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_vmwareengine_external_address) -> ()

let yojson_of_google_vmwareengine_external_address =
  (function
   | { id = v_id; name = v_name; parent = v_parent } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_parent in
         ("parent", arg) :: bnds
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
       `Assoc bnds
    : google_vmwareengine_external_address ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_vmwareengine_external_address

[@@@deriving.end]

let google_vmwareengine_external_address ?id ~name ~parent () :
    google_vmwareengine_external_address =
  { id; name; parent }

type t = {
  tf_name : string;
  create_time : string prop;
  description : string prop;
  external_ip : string prop;
  id : string prop;
  internal_ip : string prop;
  name : string prop;
  parent : string prop;
  state : string prop;
  uid : string prop;
  update_time : string prop;
}

let make ?id ~name ~parent __id =
  let __type = "google_vmwareengine_external_address" in
  let __attrs =
    ({
       tf_name = __id;
       create_time = Prop.computed __type __id "create_time";
       description = Prop.computed __type __id "description";
       external_ip = Prop.computed __type __id "external_ip";
       id = Prop.computed __type __id "id";
       internal_ip = Prop.computed __type __id "internal_ip";
       name = Prop.computed __type __id "name";
       parent = Prop.computed __type __id "parent";
       state = Prop.computed __type __id "state";
       uid = Prop.computed __type __id "uid";
       update_time = Prop.computed __type __id "update_time";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_vmwareengine_external_address
        (google_vmwareengine_external_address ?id ~name ~parent ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~name ~parent __id =
  let (r : _ Tf_core.resource) = make ?id ~name ~parent __id in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
