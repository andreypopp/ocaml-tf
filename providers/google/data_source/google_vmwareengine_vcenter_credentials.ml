(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type google_vmwareengine_vcenter_credentials = {
  id : string prop option; [@option]
  parent : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_vmwareengine_vcenter_credentials) -> ()

let yojson_of_google_vmwareengine_vcenter_credentials =
  (function
   | { id = v_id; parent = v_parent } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_parent in
         ("parent", arg) :: bnds
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
    : google_vmwareengine_vcenter_credentials ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_vmwareengine_vcenter_credentials

[@@@deriving.end]

let google_vmwareengine_vcenter_credentials ?id ~parent () :
    google_vmwareengine_vcenter_credentials =
  { id; parent }

type t = {
  id : string prop;
  parent : string prop;
  password : string prop;
  username : string prop;
}

let make ?id ~parent __id =
  let __type = "google_vmwareengine_vcenter_credentials" in
  let __attrs =
    ({
       id = Prop.computed __type __id "id";
       parent = Prop.computed __type __id "parent";
       password = Prop.computed __type __id "password";
       username = Prop.computed __type __id "username";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_vmwareengine_vcenter_credentials
        (google_vmwareengine_vcenter_credentials ?id ~parent ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~parent __id =
  let (r : _ Tf_core.resource) = make ?id ~parent __id in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
