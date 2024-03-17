(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_transcribe_vocabulary__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** aws_transcribe_vocabulary__timeouts *)

type aws_transcribe_vocabulary = {
  language_code : string;  (** language_code *)
  phrases : string list option; [@option]  (** phrases *)
  tags : (string * string) list option; [@option]  (** tags *)
  vocabulary_name : string;  (** vocabulary_name *)
  timeouts : aws_transcribe_vocabulary__timeouts option;
}
[@@deriving yojson_of]
(** aws_transcribe_vocabulary *)

let aws_transcribe_vocabulary ?phrases ?tags ?timeouts ~language_code
    ~vocabulary_name __resource_id =
  let __resource_type = "aws_transcribe_vocabulary" in
  let __resource =
    { language_code; phrases; tags; vocabulary_name; timeouts }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_transcribe_vocabulary __resource);
  ()
