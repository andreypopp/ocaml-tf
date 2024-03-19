(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

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

let register ?tf_module ?id ?name ?tags ?tags_all ?timeouts
    ~public_key __resource_id =
  let __resource_type = "aws_ivs_playback_key_pair" in
  let __resource =
    aws_ivs_playback_key_pair ?id ?name ?tags ?tags_all ?timeouts
      ~public_key ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_ivs_playback_key_pair __resource);
  let __resource_attributes =
    ({
       arn = Prop.computed __resource_type __resource_id "arn";
       fingerprint =
         Prop.computed __resource_type __resource_id "fingerprint";
       id = Prop.computed __resource_type __resource_id "id";
       name = Prop.computed __resource_type __resource_id "name";
       public_key =
         Prop.computed __resource_type __resource_id "public_key";
       tags = Prop.computed __resource_type __resource_id "tags";
       tags_all =
         Prop.computed __resource_type __resource_id "tags_all";
     }
      : t)
  in
  __resource_attributes
