(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_redshift_data_share_authorization = {
  allow_writes : bool prop option; [@option]  (** allow_writes *)
  consumer_identifier : string prop;  (** consumer_identifier *)
  data_share_arn : string prop;  (** data_share_arn *)
}
[@@deriving yojson_of]
(** aws_redshift_data_share_authorization *)

let aws_redshift_data_share_authorization ?allow_writes
    ~consumer_identifier ~data_share_arn () :
    aws_redshift_data_share_authorization =
  { allow_writes; consumer_identifier; data_share_arn }

type t = {
  allow_writes : bool prop;
  consumer_identifier : string prop;
  data_share_arn : string prop;
  id : string prop;
  managed_by : string prop;
  producer_arn : string prop;
}

let make ?allow_writes ~consumer_identifier ~data_share_arn __id =
  let __type = "aws_redshift_data_share_authorization" in
  let __attrs =
    ({
       allow_writes = Prop.computed __type __id "allow_writes";
       consumer_identifier =
         Prop.computed __type __id "consumer_identifier";
       data_share_arn = Prop.computed __type __id "data_share_arn";
       id = Prop.computed __type __id "id";
       managed_by = Prop.computed __type __id "managed_by";
       producer_arn = Prop.computed __type __id "producer_arn";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_redshift_data_share_authorization
        (aws_redshift_data_share_authorization ?allow_writes
           ~consumer_identifier ~data_share_arn ());
    attrs = __attrs;
  }

let register ?tf_module ?allow_writes ~consumer_identifier
    ~data_share_arn __id =
  let (r : _ Tf_core.resource) =
    make ?allow_writes ~consumer_identifier ~data_share_arn __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
