(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_transfer_profile = {
  as2_id : string;  (** as2_id *)
  certificate_ids : string list option; [@option]
      (** certificate_ids *)
  id : string option; [@option]  (** id *)
  profile_type : string;  (** profile_type *)
  tags : (string * string) list option; [@option]  (** tags *)
  tags_all : (string * string) list option; [@option]  (** tags_all *)
}
[@@deriving yojson_of]
(** aws_transfer_profile *)

let aws_transfer_profile ?certificate_ids ?id ?tags ?tags_all ~as2_id
    ~profile_type __resource_id =
  let __resource_type = "aws_transfer_profile" in
  let __resource =
    { as2_id; certificate_ids; id; profile_type; tags; tags_all }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_transfer_profile __resource);
  ()
