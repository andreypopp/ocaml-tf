(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_key_pair = {
  id : string option; [@option]  (** id *)
  key_name : string option; [@option]  (** key_name *)
  key_name_prefix : string option; [@option]  (** key_name_prefix *)
  public_key : string;  (** public_key *)
  tags : (string * string) list option; [@option]  (** tags *)
  tags_all : (string * string) list option; [@option]  (** tags_all *)
}
[@@deriving yojson_of]
(** aws_key_pair *)

let aws_key_pair ?id ?key_name ?key_name_prefix ?tags ?tags_all
    ~public_key __resource_id =
  let __resource_type = "aws_key_pair" in
  let __resource =
    { id; key_name; key_name_prefix; public_key; tags; tags_all }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_key_pair __resource);
  ()
