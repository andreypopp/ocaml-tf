(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_ssmcontacts_contact = {
  alias : string prop;  (** alias *)
  display_name : string prop option; [@option]  (** display_name *)
  id : string prop option; [@option]  (** id *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  type_ : string prop; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** aws_ssmcontacts_contact *)

let aws_ssmcontacts_contact ?display_name ?id ?tags ?tags_all ~alias
    ~type_ () : aws_ssmcontacts_contact =
  { alias; display_name; id; tags; tags_all; type_ }

type t = {
  alias : string prop;
  arn : string prop;
  display_name : string prop;
  id : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  type_ : string prop;
}

let make ?display_name ?id ?tags ?tags_all ~alias ~type_ __id =
  let __type = "aws_ssmcontacts_contact" in
  let __attrs =
    ({
       alias = Prop.computed __type __id "alias";
       arn = Prop.computed __type __id "arn";
       display_name = Prop.computed __type __id "display_name";
       id = Prop.computed __type __id "id";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
       type_ = Prop.computed __type __id "type";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_ssmcontacts_contact
        (aws_ssmcontacts_contact ?display_name ?id ?tags ?tags_all
           ~alias ~type_ ());
    attrs = __attrs;
  }

let register ?tf_module ?display_name ?id ?tags ?tags_all ~alias
    ~type_ __id =
  let (r : _ Tf_core.resource) =
    make ?display_name ?id ?tags ?tags_all ~alias ~type_ __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
