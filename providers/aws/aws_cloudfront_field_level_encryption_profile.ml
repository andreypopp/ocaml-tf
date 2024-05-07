(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type encryption_entities__items__field_patterns = {
  items : string prop list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : encryption_entities__items__field_patterns) -> ()

let yojson_of_encryption_entities__items__field_patterns =
  (function
   | { items = v_items } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_items with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "items", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : encryption_entities__items__field_patterns ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_encryption_entities__items__field_patterns

[@@@deriving.end]

type encryption_entities__items = {
  provider_id : string prop;
  public_key_id : string prop;
  field_patterns : encryption_entities__items__field_patterns list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : encryption_entities__items) -> ()

let yojson_of_encryption_entities__items =
  (function
   | {
       provider_id = v_provider_id;
       public_key_id = v_public_key_id;
       field_patterns = v_field_patterns;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_encryption_entities__items__field_patterns
             v_field_patterns
         in
         ("field_patterns", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_public_key_id in
         ("public_key_id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_provider_id in
         ("provider_id", arg) :: bnds
       in
       `Assoc bnds
    : encryption_entities__items -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_encryption_entities__items

[@@@deriving.end]

type encryption_entities = {
  items : encryption_entities__items list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : encryption_entities) -> ()

let yojson_of_encryption_entities =
  (function
   | { items = v_items } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_encryption_entities__items
             v_items
         in
         ("items", arg) :: bnds
       in
       `Assoc bnds
    : encryption_entities -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_encryption_entities

[@@@deriving.end]

type aws_cloudfront_field_level_encryption_profile = {
  comment : string prop option; [@option]
  id : string prop option; [@option]
  name : string prop;
  encryption_entities : encryption_entities list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_cloudfront_field_level_encryption_profile) -> ()

let yojson_of_aws_cloudfront_field_level_encryption_profile =
  (function
   | {
       comment = v_comment;
       id = v_id;
       name = v_name;
       encryption_entities = v_encryption_entities;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_encryption_entities
             v_encryption_entities
         in
         ("encryption_entities", arg) :: bnds
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
         match v_comment with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "comment", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_cloudfront_field_level_encryption_profile ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_cloudfront_field_level_encryption_profile

[@@@deriving.end]

let encryption_entities__items__field_patterns ?items () :
    encryption_entities__items__field_patterns =
  { items }

let encryption_entities__items ~provider_id ~public_key_id
    ~field_patterns () : encryption_entities__items =
  { provider_id; public_key_id; field_patterns }

let encryption_entities ~items () : encryption_entities = { items }

let aws_cloudfront_field_level_encryption_profile ?comment ?id ~name
    ~encryption_entities () :
    aws_cloudfront_field_level_encryption_profile =
  { comment; id; name; encryption_entities }

type t = {
  tf_name : string;
  caller_reference : string prop;
  comment : string prop;
  etag : string prop;
  id : string prop;
  name : string prop;
}

let make ?comment ?id ~name ~encryption_entities __id =
  let __type = "aws_cloudfront_field_level_encryption_profile" in
  let __attrs =
    ({
       tf_name = __id;
       caller_reference =
         Prop.computed __type __id "caller_reference";
       comment = Prop.computed __type __id "comment";
       etag = Prop.computed __type __id "etag";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_cloudfront_field_level_encryption_profile
        (aws_cloudfront_field_level_encryption_profile ?comment ?id
           ~name ~encryption_entities ());
    attrs = __attrs;
  }

let register ?tf_module ?comment ?id ~name ~encryption_entities __id
    =
  let (r : _ Tf_core.resource) =
    make ?comment ?id ~name ~encryption_entities __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
