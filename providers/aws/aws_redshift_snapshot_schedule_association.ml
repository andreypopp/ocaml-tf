(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_redshift_snapshot_schedule_association = {
  cluster_identifier : string prop;
  id : string prop option; [@option]
  schedule_identifier : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_redshift_snapshot_schedule_association) -> ()

let yojson_of_aws_redshift_snapshot_schedule_association =
  (function
   | {
       cluster_identifier = v_cluster_identifier;
       id = v_id;
       schedule_identifier = v_schedule_identifier;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_schedule_identifier
         in
         ("schedule_identifier", arg) :: bnds
       in
       let bnds =
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_cluster_identifier
         in
         ("cluster_identifier", arg) :: bnds
       in
       `Assoc bnds
    : aws_redshift_snapshot_schedule_association ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_redshift_snapshot_schedule_association

[@@@deriving.end]

let aws_redshift_snapshot_schedule_association ?id
    ~cluster_identifier ~schedule_identifier () :
    aws_redshift_snapshot_schedule_association =
  { cluster_identifier; id; schedule_identifier }

type t = {
  tf_name : string;
  cluster_identifier : string prop;
  id : string prop;
  schedule_identifier : string prop;
}

let make ?id ~cluster_identifier ~schedule_identifier __id =
  let __type = "aws_redshift_snapshot_schedule_association" in
  let __attrs =
    ({
       tf_name = __id;
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
