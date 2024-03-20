(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_key_pair = {
  id : string prop option; [@option]  (** id *)
  key_name : string prop option; [@option]  (** key_name *)
  key_name_prefix : string prop option; [@option]
      (** key_name_prefix *)
  public_key : string prop;  (** public_key *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
}
[@@deriving yojson_of]
(** aws_key_pair *)

let aws_key_pair ?id ?key_name ?key_name_prefix ?tags ?tags_all
    ~public_key () : aws_key_pair =
  { id; key_name; key_name_prefix; public_key; tags; tags_all }

type t = {
  arn : string prop;
  fingerprint : string prop;
  id : string prop;
  key_name : string prop;
  key_name_prefix : string prop;
  key_pair_id : string prop;
  key_type : string prop;
  public_key : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let make ?id ?key_name ?key_name_prefix ?tags ?tags_all ~public_key
    __id =
  let __type = "aws_key_pair" in
  let __attrs =
    ({
       arn = Prop.computed __type __id "arn";
       fingerprint = Prop.computed __type __id "fingerprint";
       id = Prop.computed __type __id "id";
       key_name = Prop.computed __type __id "key_name";
       key_name_prefix = Prop.computed __type __id "key_name_prefix";
       key_pair_id = Prop.computed __type __id "key_pair_id";
       key_type = Prop.computed __type __id "key_type";
       public_key = Prop.computed __type __id "public_key";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_key_pair
        (aws_key_pair ?id ?key_name ?key_name_prefix ?tags ?tags_all
           ~public_key ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?key_name ?key_name_prefix ?tags
    ?tags_all ~public_key __id =
  let (r : _ Tf_core.resource) =
    make ?id ?key_name ?key_name_prefix ?tags ?tags_all ~public_key
      __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
