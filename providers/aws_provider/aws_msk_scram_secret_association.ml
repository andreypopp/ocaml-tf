(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_msk_scram_secret_association = {
  cluster_arn : string prop;  (** cluster_arn *)
  id : string prop option; [@option]  (** id *)
  secret_arn_list : string prop list;  (** secret_arn_list *)
}
[@@deriving yojson_of]
(** aws_msk_scram_secret_association *)

let aws_msk_scram_secret_association ?id ~cluster_arn
    ~secret_arn_list __resource_id =
  let __resource_type = "aws_msk_scram_secret_association" in
  let __resource = { cluster_arn; id; secret_arn_list } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_msk_scram_secret_association __resource);
  ()
