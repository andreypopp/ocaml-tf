(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_ivs_playback_key_pair__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
}
[@@deriving yojson_of]
(** aws_ivs_playback_key_pair__timeouts *)

type aws_ivs_playback_key_pair = {
  id : string prop option; [@option]  (** id *)
  name : string prop option; [@option]  (** name *)
  public_key : string prop;  (** public_key *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  timeouts : aws_ivs_playback_key_pair__timeouts option;
}
[@@deriving yojson_of]
(** aws_ivs_playback_key_pair *)

let aws_ivs_playback_key_pair ?id ?name ?tags ?tags_all ?timeouts
    ~public_key __resource_id =
  let __resource_type = "aws_ivs_playback_key_pair" in
  let __resource =
    { id; name; public_key; tags; tags_all; timeouts }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_ivs_playback_key_pair __resource);
  ()
