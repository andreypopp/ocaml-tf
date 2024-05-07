(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_quicksight_ingestion = {
  aws_account_id: string  prop option; [@option]
  data_set_id: string prop; 
  ingestion_id: string prop; 
  ingestion_type: string prop; 
} [@@deriving_inline yojson_of]
[@@@deriving.end]

let aws_quicksight_ingestion ?aws_account_id ~data_set_id ~ingestion_id ~ingestion_type () =
  ({
    aws_account_id;
    data_set_id;
    ingestion_id;
    ingestion_type;
  } : aws_quicksight_ingestion);;

type t = {
  tf_name: string;
  arn: string prop;
  aws_account_id: string prop;
  data_set_id: string prop;
  id: string prop;
  ingestion_id: string prop;
  ingestion_status: string prop;
  ingestion_type: string prop;
}

let make ?aws_account_id ~data_set_id ~ingestion_id ~ingestion_type __id =
  let __type = "aws_quicksight_ingestion" in
  let __attrs = ({
    tf_name = __id;
    arn = Prop.computed __type __id "arn";
    aws_account_id = Prop.computed __type __id "aws_account_id";
    data_set_id = Prop.computed __type __id "data_set_id";
    id = Prop.computed __type __id "id";
    ingestion_id = Prop.computed __type __id "ingestion_id";
    ingestion_status = Prop.computed __type __id "ingestion_status";
    ingestion_type = Prop.computed __type __id "ingestion_type";
  } : t) in
  {Tf_core.
    id=__id;
    type_=__type;
    json=yojson_of_aws_quicksight_ingestion (aws_quicksight_ingestion ?aws_account_id ~data_set_id ~ingestion_id ~ingestion_type ());
    attrs=__attrs;
  };;

let register ?tf_module ?aws_account_id ~data_set_id ~ingestion_id ~ingestion_type __id =
  let (r : _ Tf_core.resource) = make ?aws_account_id ~data_set_id ~ingestion_id ~ingestion_type __id in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs;;

