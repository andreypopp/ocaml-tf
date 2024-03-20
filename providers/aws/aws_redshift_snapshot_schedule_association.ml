(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_redshift_snapshot_schedule_association = {
  cluster_identifier : string prop;  (** cluster_identifier *)
  id : string prop option; [@option]  (** id *)
  schedule_identifier : string prop;  (** schedule_identifier *)
}
[@@deriving yojson_of]
(** aws_redshift_snapshot_schedule_association *)

let aws_redshift_snapshot_schedule_association ?id
    ~cluster_identifier ~schedule_identifier () :
    aws_redshift_snapshot_schedule_association =
  { cluster_identifier; id; schedule_identifier }

type t = {
  cluster_identifier : string prop;
  id : string prop;
  schedule_identifier : string prop;
}

let make ?id ~cluster_identifier ~schedule_identifier __id =
  let __type = "aws_redshift_snapshot_schedule_association" in
  let __attrs =
    ({
       cluster_identifier =
         Prop.computed __type __id "cluster_identifier";
       id = Prop.computed __type __id "id";
       schedule_identifier =
         Prop.computed __type __id "schedule_identifier";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_redshift_snapshot_schedule_association
        (aws_redshift_snapshot_schedule_association ?id
           ~cluster_identifier ~schedule_identifier ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~cluster_identifier ~schedule_identifier
    __id =
  let (r : _ Tf_core.resource) =
    make ?id ~cluster_identifier ~schedule_identifier __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
