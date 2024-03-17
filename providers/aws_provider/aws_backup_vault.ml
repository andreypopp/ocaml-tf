(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_backup_vault__timeouts = {
  delete : string option; [@option]  (** delete *)
}
[@@deriving yojson_of]
(** aws_backup_vault__timeouts *)

type aws_backup_vault = {
  force_destroy : bool option; [@option]  (** force_destroy *)
  id : string option; [@option]  (** id *)
  kms_key_arn : string option; [@option]  (** kms_key_arn *)
  name : string;  (** name *)
  tags : (string * string) list option; [@option]  (** tags *)
  tags_all : (string * string) list option; [@option]
      (** tags_all *)
  timeouts : aws_backup_vault__timeouts option;
}
[@@deriving yojson_of]
(** aws_backup_vault *)

let aws_backup_vault ?force_destroy ?id ?kms_key_arn ?tags ?tags_all
    ?timeouts ~name __resource_id =
  let __resource_type = "aws_backup_vault" in
  let __resource =
    {
      force_destroy;
      id;
      kms_key_arn;
      name;
      tags;
      tags_all;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_backup_vault __resource);
  ()
