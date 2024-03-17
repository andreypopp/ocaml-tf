(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_timestreamwrite_database = {
  database_name : string prop;  (** database_name *)
  id : string prop option; [@option]  (** id *)
  kms_key_id : string prop option; [@option]  (** kms_key_id *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
}
[@@deriving yojson_of]
(** aws_timestreamwrite_database *)

let aws_timestreamwrite_database ?id ?kms_key_id ?tags ?tags_all
    ~database_name __resource_id =
  let __resource_type = "aws_timestreamwrite_database" in
  let __resource =
    { database_name; id; kms_key_id; tags; tags_all }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_timestreamwrite_database __resource);
  ()
