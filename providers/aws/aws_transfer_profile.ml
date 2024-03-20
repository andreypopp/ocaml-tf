(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_transfer_profile = {
  as2_id : string prop;  (** as2_id *)
  certificate_ids : string prop list option; [@option]
      (** certificate_ids *)
  id : string prop option; [@option]  (** id *)
  profile_type : string prop;  (** profile_type *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
}
[@@deriving yojson_of]
(** aws_transfer_profile *)

let aws_transfer_profile ?certificate_ids ?id ?tags ?tags_all ~as2_id
    ~profile_type () : aws_transfer_profile =
  { as2_id; certificate_ids; id; profile_type; tags; tags_all }

type t = {
  arn : string prop;
  as2_id : string prop;
  certificate_ids : string list prop;
  id : string prop;
  profile_id : string prop;
  profile_type : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let make ?certificate_ids ?id ?tags ?tags_all ~as2_id ~profile_type
    __id =
  let __type = "aws_transfer_profile" in
  let __attrs =
    ({
       arn = Prop.computed __type __id "arn";
       as2_id = Prop.computed __type __id "as2_id";
       certificate_ids = Prop.computed __type __id "certificate_ids";
       id = Prop.computed __type __id "id";
       profile_id = Prop.computed __type __id "profile_id";
       profile_type = Prop.computed __type __id "profile_type";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_transfer_profile
        (aws_transfer_profile ?certificate_ids ?id ?tags ?tags_all
           ~as2_id ~profile_type ());
    attrs = __attrs;
  }

let register ?tf_module ?certificate_ids ?id ?tags ?tags_all ~as2_id
    ~profile_type __id =
  let (r : _ Tf_core.resource) =
    make ?certificate_ids ?id ?tags ?tags_all ~as2_id ~profile_type
      __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
