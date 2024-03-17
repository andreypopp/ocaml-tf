(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_ses_template = {
  html : string prop option; [@option]  (** html *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  subject : string prop option; [@option]  (** subject *)
  text : string prop option; [@option]  (** text *)
}
[@@deriving yojson_of]
(** aws_ses_template *)

let aws_ses_template ?html ?id ?subject ?text ~name __resource_id =
  let __resource_type = "aws_ses_template" in
  let __resource = { html; id; name; subject; text } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_ses_template __resource);
  ()
