(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

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

let aws_key_pair ?id ?key_name ?key_name_prefix ?tags ?tags_all
    ~public_key __resource_id =
  let __resource_type = "aws_key_pair" in
  let __resource =
    ({ id; key_name; key_name_prefix; public_key; tags; tags_all }
      : aws_key_pair)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_key_pair __resource);
  let __resource_attributes =
    ({
       arn = Prop.computed __resource_type __resource_id "arn";
       fingerprint =
         Prop.computed __resource_type __resource_id "fingerprint";
       id = Prop.computed __resource_type __resource_id "id";
       key_name =
         Prop.computed __resource_type __resource_id "key_name";
       key_name_prefix =
         Prop.computed __resource_type __resource_id
           "key_name_prefix";
       key_pair_id =
         Prop.computed __resource_type __resource_id "key_pair_id";
       key_type =
         Prop.computed __resource_type __resource_id "key_type";
       public_key =
         Prop.computed __resource_type __resource_id "public_key";
       tags = Prop.computed __resource_type __resource_id "tags";
       tags_all =
         Prop.computed __resource_type __resource_id "tags_all";
     }
      : t)
  in
  __resource_attributes
