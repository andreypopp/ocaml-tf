(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

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

let make ?id ~account_id ~cluster_identifier ~database_name
    ~partner_name __id =
  let __type = "aws_redshift_partner" in
  let __attrs =
    ({
       account_id = Prop.computed __type __id "account_id";
       cluster_identifier =
         Prop.computed __type __id "cluster_identifier";
       database_name = Prop.computed __type __id "database_name";
       id = Prop.computed __type __id "id";
       partner_name = Prop.computed __type __id "partner_name";
       status = Prop.computed __type __id "status";
       status_message = Prop.computed __type __id "status_message";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_redshift_partner
        (aws_redshift_partner ?id ~account_id ~cluster_identifier
           ~database_name ~partner_name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~account_id ~cluster_identifier
    ~database_name ~partner_name __id =
  let (r : _ Tf_core.resource) =
    make ?id ~account_id ~cluster_identifier ~database_name
      ~partner_name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
