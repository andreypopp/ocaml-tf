(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
}
[@@deriving yojson_of]
(** timeouts *)

type aws_ivs_playback_key_pair = {
  id : string prop option; [@option]  (** id *)
  name : string prop option; [@option]  (** name *)
  public_key : string prop;  (** public_key *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** aws_ivs_playback_key_pair *)

let timeouts ?create ?delete () : timeouts = { create; delete }

let aws_ivs_playback_key_pair ?id ?name ?tags ?tags_all ?timeouts
    ~public_key () : aws_ivs_playback_key_pair =
  { id; name; public_key; tags; tags_all; timeouts }

type t = {
  arn : string prop;
  fingerprint : string prop;
  id : string prop;
  name : string prop;
  public_key : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let make ?id ?name ?tags ?tags_all ?timeouts ~public_key __id =
  let __type = "aws_ivs_playback_key_pair" in
  let __attrs =
    ({
       arn = Prop.computed __type __id "arn";
       fingerprint = Prop.computed __type __id "fingerprint";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
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
      yojson_of_aws_ivs_playback_key_pair
        (aws_ivs_playback_key_pair ?id ?name ?tags ?tags_all
           ?timeouts ~public_key ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?name ?tags ?tags_all ?timeouts
    ~public_key __id =
  let (r : _ Tf_core.resource) =
    make ?id ?name ?tags ?tags_all ?timeouts ~public_key __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
