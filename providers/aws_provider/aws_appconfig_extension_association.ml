(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type aws_appconfig_extension_association = {
  extension_arn : string;  (** extension_arn *)
  parameters : (string * string) list option; [@option]
      (** parameters *)
  resource_arn : string;  (** resource_arn *)
}
[@@deriving yojson_of]
(** aws_appconfig_extension_association *)

let aws_appconfig_extension_association ?parameters ~extension_arn
    ~resource_arn __resource_id =
  let __resource_type = "aws_appconfig_extension_association" in
  let __resource = { extension_arn; parameters; resource_arn } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_appconfig_extension_association __resource);
  ()
