(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_chime_voice_connector = {
  aws_region : string option; [@option]  (** aws_region *)
  id : string option; [@option]  (** id *)
  name : string;  (** name *)
  require_encryption : bool;  (** require_encryption *)
  tags : (string * string) list option; [@option]  (** tags *)
  tags_all : (string * string) list option; [@option]  (** tags_all *)
}
[@@deriving yojson_of]
(** aws_chime_voice_connector *)

let aws_chime_voice_connector ?aws_region ?id ?tags ?tags_all ~name
    ~require_encryption __resource_id =
  let __resource_type = "aws_chime_voice_connector" in
  let __resource =
    { aws_region; id; name; require_encryption; tags; tags_all }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_chime_voice_connector __resource);
  ()
