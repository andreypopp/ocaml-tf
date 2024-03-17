(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type aws_redshift_data_share_consumer_association = {
  allow_writes : bool option; [@option]  (** allow_writes *)
  associate_entire_account : bool option; [@option]
      (** associate_entire_account *)
  consumer_arn : string option; [@option]  (** consumer_arn *)
  consumer_region : string option; [@option]  (** consumer_region *)
  data_share_arn : string;  (** data_share_arn *)
}
[@@deriving yojson_of]
(** aws_redshift_data_share_consumer_association *)

let aws_redshift_data_share_consumer_association ?allow_writes
    ?associate_entire_account ?consumer_arn ?consumer_region
    ~data_share_arn __resource_id =
  let __resource_type =
    "aws_redshift_data_share_consumer_association"
  in
  let __resource =
    {
      allow_writes;
      associate_entire_account;
      consumer_arn;
      consumer_region;
      data_share_arn;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_redshift_data_share_consumer_association
       __resource);
  ()
