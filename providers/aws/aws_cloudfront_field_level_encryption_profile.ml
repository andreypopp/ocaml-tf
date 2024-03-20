(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type encryption_entities__items__field_patterns = {
  items : string prop list option; [@option]  (** items *)
}
[@@deriving yojson_of]
(** encryption_entities__items__field_patterns *)

type encryption_entities__items = {
  provider_id : string prop;  (** provider_id *)
  public_key_id : string prop;  (** public_key_id *)
  field_patterns : encryption_entities__items__field_patterns list;
}
[@@deriving yojson_of]
(** encryption_entities__items *)

type encryption_entities = {
  items : encryption_entities__items list;
}
[@@deriving yojson_of]
(** encryption_entities *)

type aws_cloudfront_field_level_encryption_profile = {
  comment : string prop option; [@option]  (** comment *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  encryption_entities : encryption_entities list;
}
[@@deriving yojson_of]
(** aws_cloudfront_field_level_encryption_profile *)

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
