(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type aws_ses_template = {
  html : string option; [@option]  (** html *)
  name : string;  (** name *)
  subject : string option; [@option]  (** subject *)
  text : string option; [@option]  (** text *)
}
[@@deriving yojson_of]
(** aws_ses_template *)

let aws_ses_template ?html ?subject ?text ~name __resource_id =
  let __resource_type = "aws_ses_template" in
  let __resource = { html; name; subject; text } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_ses_template __resource);
  ()
