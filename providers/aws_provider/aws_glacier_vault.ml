(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_glacier_vault__notification = {
  events : string prop list;  (** events *)
  sns_topic : string prop;  (** sns_topic *)
}
[@@deriving yojson_of]
(** aws_glacier_vault__notification *)

type aws_glacier_vault = {
  access_policy : string prop option; [@option]  (** access_policy *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
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
