(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type aws_appconfig_application = {
  description : string option; [@option]  (** description *)
  name : string;  (** name *)
  tags : (string * string) list option; [@option]  (** tags *)
}
[@@deriving yojson_of]
(** aws_appconfig_application *)

let aws_appconfig_application ?description ?tags ~name __resource_id
    =
  let __resource_type = "aws_appconfig_application" in
  let __resource = { description; name; tags } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_appconfig_application __resource);
  ()