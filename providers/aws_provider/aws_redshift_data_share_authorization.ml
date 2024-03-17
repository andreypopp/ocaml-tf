(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_redshift_data_share_authorization = {
  allow_writes : bool prop option; [@option]  (** allow_writes *)
  consumer_identifier : string prop;  (** consumer_identifier *)
  data_share_arn : string prop;  (** data_share_arn *)
}
[@@deriving yojson_of]
(** aws_redshift_data_share_authorization *)

let aws_redshift_data_share_authorization ?allow_writes
    ~consumer_identifier ~data_share_arn __resource_id =
  let __resource_type = "aws_redshift_data_share_authorization" in
  let __resource =
    { allow_writes; consumer_identifier; data_share_arn }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_redshift_data_share_authorization __resource);
  ()
