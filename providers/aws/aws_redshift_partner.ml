(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_redshift_partner = {
  account_id : string prop;  (** account_id *)
  cluster_identifier : string prop;  (** cluster_identifier *)
  database_name : string prop;  (** database_name *)
  id : string prop option; [@option]  (** id *)
  partner_name : string prop;  (** partner_name *)
}
[@@deriving yojson_of]
(** aws_redshift_partner *)

let aws_redshift_partner ?id ~account_id ~cluster_identifier
    ~database_name ~partner_name () : aws_redshift_partner =
  { account_id; cluster_identifier; database_name; id; partner_name }

type t = {
  account_id : string prop;
  cluster_identifier : string prop;
  database_name : string prop;
  id : string prop;
  partner_name : string prop;
  status : string prop;
  status_message : string prop;
}

let register ?tf_module ?id ~account_id ~cluster_identifier
    ~database_name ~partner_name __resource_id =
  let __resource_type = "aws_redshift_partner" in
  let __resource =
    aws_redshift_partner ?id ~account_id ~cluster_identifier
      ~database_name ~partner_name ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_redshift_partner __resource);
  let __resource_attributes =
    ({
       account_id =
         Prop.computed __resource_type __resource_id "account_id";
       cluster_identifier =
         Prop.computed __resource_type __resource_id
           "cluster_identifier";
       database_name =
         Prop.computed __resource_type __resource_id "database_name";
       id = Prop.computed __resource_type __resource_id "id";
       partner_name =
         Prop.computed __resource_type __resource_id "partner_name";
       status = Prop.computed __resource_type __resource_id "status";
       status_message =
         Prop.computed __resource_type __resource_id "status_message";
     }
      : t)
  in
  __resource_attributes
