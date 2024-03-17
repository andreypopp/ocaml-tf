(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_glacier_vault__notification = {
  events : string list;  (** events *)
  sns_topic : string;  (** sns_topic *)
}
[@@deriving yojson_of]
(** aws_glacier_vault__notification *)

type aws_glacier_vault = {
  access_policy : string option; [@option]  (** access_policy *)
  id : string option; [@option]  (** id *)
  name : string;  (** name *)
  tags : (string * string) list option; [@option]  (** tags *)
  tags_all : (string * string) list option; [@option]
      (** tags_all *)
  notification : aws_glacier_vault__notification list;
}
[@@deriving yojson_of]
(** aws_glacier_vault *)

let aws_glacier_vault ?access_policy ?id ?tags ?tags_all ~name
    ~notification __resource_id =
  let __resource_type = "aws_glacier_vault" in
  let __resource =
    { access_policy; id; name; tags; tags_all; notification }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_glacier_vault __resource);
  ()
