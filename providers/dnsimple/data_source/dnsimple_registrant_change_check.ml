(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type extended_attributes__options = {
  description : string prop;
  title : string prop;
  value : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : extended_attributes__options) -> ()

let yojson_of_extended_attributes__options =
  (function
   | {
       description = v_description;
       title = v_title;
       value = v_value;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_value in
         ("value", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_title in
         ("title", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_description in
         ("description", arg) :: bnds
       in
       `Assoc bnds
    : extended_attributes__options ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_extended_attributes__options

[@@@deriving.end]

type extended_attributes = {
  description : string prop;
  name : string prop;
  options : extended_attributes__options list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  required : bool prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : extended_attributes) -> ()

let yojson_of_extended_attributes =
  (function
   | {
       description = v_description;
       name = v_name;
       options = v_options;
       required = v_required;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_required in
         ("required", arg) :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_options then bnds
         else
           let arg =
             (yojson_of_list yojson_of_extended_attributes__options)
               v_options
           in
           let bnd = "options", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_description in
         ("description", arg) :: bnds
       in
       `Assoc bnds
    : extended_attributes -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_extended_attributes

[@@@deriving.end]

type dnsimple_registrant_change_check = {
  contact_id : string prop;
  domain_id : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : dnsimple_registrant_change_check) -> ()

let yojson_of_dnsimple_registrant_change_check =
  (function
   | { contact_id = v_contact_id; domain_id = v_domain_id } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_domain_id in
         ("domain_id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_contact_id in
         ("contact_id", arg) :: bnds
       in
       `Assoc bnds
    : dnsimple_registrant_change_check ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_dnsimple_registrant_change_check

[@@@deriving.end]

let dnsimple_registrant_change_check ~contact_id ~domain_id () :
    dnsimple_registrant_change_check =
  { contact_id; domain_id }

type t = {
  tf_name : string;
  contact_id : string prop;
  domain_id : string prop;
  extended_attributes : extended_attributes list prop;
  id : string prop;
  registry_owner_change : bool prop;
}

let make ~contact_id ~domain_id __id =
  let __type = "dnsimple_registrant_change_check" in
  let __attrs =
    ({
       tf_name = __id;
       contact_id = Prop.computed __type __id "contact_id";
       domain_id = Prop.computed __type __id "domain_id";
       extended_attributes =
         Prop.computed __type __id "extended_attributes";
       id = Prop.computed __type __id "id";
       registry_owner_change =
         Prop.computed __type __id "registry_owner_change";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_dnsimple_registrant_change_check
        (dnsimple_registrant_change_check ~contact_id ~domain_id ());
    attrs = __attrs;
  }

let register ?tf_module ~contact_id ~domain_id __id =
  let (r : _ Tf_core.resource) = make ~contact_id ~domain_id __id in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
