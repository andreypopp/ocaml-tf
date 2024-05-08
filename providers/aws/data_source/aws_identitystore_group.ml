(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type alternate_identifier__external_id = {
  id : string prop;
  issuer : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : alternate_identifier__external_id) -> ()

let yojson_of_alternate_identifier__external_id =
  (function
   | { id = v_id; issuer = v_issuer } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_issuer in
         ("issuer", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_id in
         ("id", arg) :: bnds
       in
       `Assoc bnds
    : alternate_identifier__external_id ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_alternate_identifier__external_id

[@@@deriving.end]

type alternate_identifier__unique_attribute = {
  attribute_path : string prop;
  attribute_value : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : alternate_identifier__unique_attribute) -> ()

let yojson_of_alternate_identifier__unique_attribute =
  (function
   | {
       attribute_path = v_attribute_path;
       attribute_value = v_attribute_value;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_attribute_value
         in
         ("attribute_value", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_attribute_path
         in
         ("attribute_path", arg) :: bnds
       in
       `Assoc bnds
    : alternate_identifier__unique_attribute ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_alternate_identifier__unique_attribute

[@@@deriving.end]

type alternate_identifier = {
  external_id : alternate_identifier__external_id list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  unique_attribute : alternate_identifier__unique_attribute list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : alternate_identifier) -> ()

let yojson_of_alternate_identifier =
  (function
   | {
       external_id = v_external_id;
       unique_attribute = v_unique_attribute;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_unique_attribute then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_alternate_identifier__unique_attribute)
               v_unique_attribute
           in
           let bnd = "unique_attribute", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_external_id then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_alternate_identifier__external_id)
               v_external_id
           in
           let bnd = "external_id", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : alternate_identifier -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_alternate_identifier

[@@@deriving.end]

type filter = {
  attribute_path : string prop;
  attribute_value : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : filter) -> ()

let yojson_of_filter =
  (function
   | {
       attribute_path = v_attribute_path;
       attribute_value = v_attribute_value;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_attribute_value
         in
         ("attribute_value", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_attribute_path
         in
         ("attribute_path", arg) :: bnds
       in
       `Assoc bnds
    : filter -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_filter

[@@@deriving.end]

type external_ids = { id : string prop; issuer : string prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : external_ids) -> ()

let yojson_of_external_ids =
  (function
   | { id = v_id; issuer = v_issuer } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_issuer in
         ("issuer", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_id in
         ("id", arg) :: bnds
       in
       `Assoc bnds
    : external_ids -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_external_ids

[@@@deriving.end]

type aws_identitystore_group = {
  group_id : string prop option; [@option]
  id : string prop option; [@option]
  identity_store_id : string prop;
  alternate_identifier : alternate_identifier list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  filter : filter list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_identitystore_group) -> ()

let yojson_of_aws_identitystore_group =
  (function
   | {
       group_id = v_group_id;
       id = v_id;
       identity_store_id = v_identity_store_id;
       alternate_identifier = v_alternate_identifier;
       filter = v_filter;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_filter then bnds
         else
           let arg = (yojson_of_list yojson_of_filter) v_filter in
           let bnd = "filter", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_alternate_identifier then bnds
         else
           let arg =
             (yojson_of_list yojson_of_alternate_identifier)
               v_alternate_identifier
           in
           let bnd = "alternate_identifier", arg in
           bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_identity_store_id
         in
         ("identity_store_id", arg) :: bnds
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
         match v_group_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "group_id", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_identitystore_group -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_identitystore_group

[@@@deriving.end]

let alternate_identifier__external_id ~id ~issuer () :
    alternate_identifier__external_id =
  { id; issuer }

let alternate_identifier__unique_attribute ~attribute_path
    ~attribute_value () : alternate_identifier__unique_attribute =
  { attribute_path; attribute_value }

let alternate_identifier ?(external_id = []) ?(unique_attribute = [])
    () : alternate_identifier =
  { external_id; unique_attribute }

let filter ~attribute_path ~attribute_value () : filter =
  { attribute_path; attribute_value }

let aws_identitystore_group ?group_id ?id
    ?(alternate_identifier = []) ?(filter = []) ~identity_store_id ()
    : aws_identitystore_group =
  { group_id; id; identity_store_id; alternate_identifier; filter }

type t = {
  tf_name : string;
  description : string prop;
  display_name : string prop;
  external_ids : external_ids list prop;
  group_id : string prop;
  id : string prop;
  identity_store_id : string prop;
}

let make ?group_id ?id ?(alternate_identifier = []) ?(filter = [])
    ~identity_store_id __id =
  let __type = "aws_identitystore_group" in
  let __attrs =
    ({
       tf_name = __id;
       description = Prop.computed __type __id "description";
       display_name = Prop.computed __type __id "display_name";
       external_ids = Prop.computed __type __id "external_ids";
       group_id = Prop.computed __type __id "group_id";
       id = Prop.computed __type __id "id";
       identity_store_id =
         Prop.computed __type __id "identity_store_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_identitystore_group
        (aws_identitystore_group ?group_id ?id ~alternate_identifier
           ~filter ~identity_store_id ());
    attrs = __attrs;
  }

let register ?tf_module ?group_id ?id ?(alternate_identifier = [])
    ?(filter = []) ~identity_store_id __id =
  let (r : _ Tf_core.resource) =
    make ?group_id ?id ~alternate_identifier ~filter
      ~identity_store_id __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
