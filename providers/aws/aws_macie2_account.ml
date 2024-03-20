(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_macie2_account = {
  finding_publishing_frequency: string  prop option; [@option]
  id: string  prop option; [@option]
  status: string  prop option; [@option]
} [@@deriving_inline yojson_of]
[@@@deriving.end]

let aws_macie2_account ?finding_publishing_frequency ?id ?status () =
  ({
    finding_publishing_frequency;
    id;
    status;
  } : aws_macie2_account);;

type t = {
  created_at: string prop;
  finding_publishing_frequency: string prop;
  id: string prop;
  service_role: string prop;
  status: string prop;
  updated_at: string prop;
}

let make ?finding_publishing_frequency ?id ?status __id =
  let __type = "aws_macie2_account" in
  let __attrs = ({
    created_at = Prop.computed __type __id "created_at";
    finding_publishing_frequency = Prop.computed __type __id "finding_publishing_frequency";
    id = Prop.computed __type __id "id";
    service_role = Prop.computed __type __id "service_role";
    status = Prop.computed __type __id "status";
    updated_at = Prop.computed __type __id "updated_at";
  } : t) in
  {Tf_core.
    id=__id;
    type_=__type;
    json=yojson_of_aws_macie2_account (aws_macie2_account ?finding_publishing_frequency ?id ?status ());
    attrs=__attrs;
  };;

let register ?tf_module ?finding_publishing_frequency ?id ?status __id =
  let (r : _ Tf_core.resource) = make ?finding_publishing_frequency ?id ?status __id in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs;;

