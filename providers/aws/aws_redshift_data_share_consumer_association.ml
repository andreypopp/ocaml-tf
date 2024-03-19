(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_redshift_data_share_consumer_association = {
  allow_writes : bool prop option; [@option]  (** allow_writes *)
  associate_entire_account : bool prop option; [@option]
      (** associate_entire_account *)
  consumer_arn : string prop option; [@option]  (** consumer_arn *)
  consumer_region : string prop option; [@option]
      (** consumer_region *)
  data_share_arn : string prop;  (** data_share_arn *)
}
[@@deriving yojson_of]
(** aws_redshift_data_share_consumer_association *)

let aws_redshift_data_share_consumer_association ?allow_writes
    ?associate_entire_account ?consumer_arn ?consumer_region
    ~data_share_arn () : aws_redshift_data_share_consumer_association
    =
  {
    allow_writes;
    associate_entire_account;
    consumer_arn;
    consumer_region;
    data_share_arn;
  }

type t = {
  allow_writes : bool prop;
  associate_entire_account : bool prop;
  consumer_arn : string prop;
  consumer_region : string prop;
  data_share_arn : string prop;
  id : string prop;
  managed_by : string prop;
  producer_arn : string prop;
}

let register ?tf_module ?allow_writes ?associate_entire_account
    ?consumer_arn ?consumer_region ~data_share_arn __resource_id =
  let __resource_type =
    "aws_redshift_data_share_consumer_association"
  in
  let __resource =
    aws_redshift_data_share_consumer_association ?allow_writes
      ?associate_entire_account ?consumer_arn ?consumer_region
      ~data_share_arn ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_redshift_data_share_consumer_association
       __resource);
  let __resource_attributes =
    ({
       allow_writes =
         Prop.computed __resource_type __resource_id "allow_writes";
       associate_entire_account =
         Prop.computed __resource_type __resource_id
           "associate_entire_account";
       consumer_arn =
         Prop.computed __resource_type __resource_id "consumer_arn";
       consumer_region =
         Prop.computed __resource_type __resource_id
           "consumer_region";
       data_share_arn =
         Prop.computed __resource_type __resource_id "data_share_arn";
       id = Prop.computed __resource_type __resource_id "id";
       managed_by =
         Prop.computed __resource_type __resource_id "managed_by";
       producer_arn =
         Prop.computed __resource_type __resource_id "producer_arn";
     }
      : t)
  in
  __resource_attributes
