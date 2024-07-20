(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type definition__static = {
  description : string prop option; [@option]
  statement : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : definition__static) -> ()

let yojson_of_definition__static =
  (function
   | { description = v_description; statement = v_statement } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_statement in
         ("statement", arg) :: bnds
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
    : definition__static -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_definition__static

[@@@deriving.end]

type definition__template_linked__principal = {
  entity_id : string prop;
  entity_type : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : definition__template_linked__principal) -> ()

let yojson_of_definition__template_linked__principal =
  (function
   | { entity_id = v_entity_id; entity_type = v_entity_type } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_entity_type in
         ("entity_type", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_entity_id in
         ("entity_id", arg) :: bnds
       in
       `Assoc bnds
    : definition__template_linked__principal ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_definition__template_linked__principal

[@@@deriving.end]

type definition__template_linked__resource = {
  entity_id : string prop;
  entity_type : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : definition__template_linked__resource) -> ()

let yojson_of_definition__template_linked__resource =
  (function
   | { entity_id = v_entity_id; entity_type = v_entity_type } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_entity_type in
         ("entity_type", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_entity_id in
         ("entity_id", arg) :: bnds
       in
       `Assoc bnds
    : definition__template_linked__resource ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_definition__template_linked__resource

[@@@deriving.end]

type definition__template_linked = {
  policy_template_id : string prop;
  principal : definition__template_linked__principal list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  resource : definition__template_linked__resource list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : definition__template_linked) -> ()

let yojson_of_definition__template_linked =
  (function
   | {
       policy_template_id = v_policy_template_id;
       principal = v_principal;
       resource = v_resource;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_resource then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_definition__template_linked__resource)
               v_resource
           in
           let bnd = "resource", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_principal then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_definition__template_linked__principal)
               v_principal
           in
           let bnd = "principal", arg in
           bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_policy_template_id
         in
         ("policy_template_id", arg) :: bnds
       in
       `Assoc bnds
    : definition__template_linked ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_definition__template_linked

[@@@deriving.end]

type definition = {
  static : definition__static list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  template_linked : definition__template_linked list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : definition) -> ()

let yojson_of_definition =
  (function
   | { static = v_static; template_linked = v_template_linked } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_template_linked then bnds
         else
           let arg =
             (yojson_of_list yojson_of_definition__template_linked)
               v_template_linked
           in
           let bnd = "template_linked", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_static then bnds
         else
           let arg =
             (yojson_of_list yojson_of_definition__static) v_static
           in
           let bnd = "static", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : definition -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_definition

[@@@deriving.end]

type aws_verifiedpermissions_policy = {
  policy_store_id : string prop;
  definition : definition list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_verifiedpermissions_policy) -> ()

let yojson_of_aws_verifiedpermissions_policy =
  (function
   | {
       policy_store_id = v_policy_store_id;
       definition = v_definition;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_definition then bnds
         else
           let arg =
             (yojson_of_list yojson_of_definition) v_definition
           in
           let bnd = "definition", arg in
           bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_policy_store_id
         in
         ("policy_store_id", arg) :: bnds
       in
       `Assoc bnds
    : aws_verifiedpermissions_policy ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_verifiedpermissions_policy

[@@@deriving.end]

let definition__static ?description ~statement () :
    definition__static =
  { description; statement }

let definition__template_linked__principal ~entity_id ~entity_type ()
    : definition__template_linked__principal =
  { entity_id; entity_type }

let definition__template_linked__resource ~entity_id ~entity_type ()
    : definition__template_linked__resource =
  { entity_id; entity_type }

let definition__template_linked ?(principal = []) ?(resource = [])
    ~policy_template_id () : definition__template_linked =
  { policy_template_id; principal; resource }

let definition ?(static = []) ?(template_linked = []) () : definition
    =
  { static; template_linked }

let aws_verifiedpermissions_policy ?(definition = [])
    ~policy_store_id () : aws_verifiedpermissions_policy =
  { policy_store_id; definition }

type t = {
  tf_name : string;
  created_date : string prop;
  id : string prop;
  policy_id : string prop;
  policy_store_id : string prop;
}

let make ?(definition = []) ~policy_store_id __id =
  let __type = "aws_verifiedpermissions_policy" in
  let __attrs =
    ({
       tf_name = __id;
       created_date = Prop.computed __type __id "created_date";
       id = Prop.computed __type __id "id";
       policy_id = Prop.computed __type __id "policy_id";
       policy_store_id = Prop.computed __type __id "policy_store_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_verifiedpermissions_policy
        (aws_verifiedpermissions_policy ~definition ~policy_store_id
           ());
    attrs = __attrs;
  }

let register ?tf_module ?(definition = []) ~policy_store_id __id =
  let (r : _ Tf_core.resource) =
    make ~definition ~policy_store_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
