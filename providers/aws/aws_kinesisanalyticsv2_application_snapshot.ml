(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
}
[@@deriving yojson_of]
(** timeouts *)

type aws_kinesisanalyticsv2_application_snapshot = {
  application_name : string prop;  (** application_name *)
  id : string prop option; [@option]  (** id *)
  snapshot_name : string prop;  (** snapshot_name *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** aws_kinesisanalyticsv2_application_snapshot *)

let timeouts ?create ?delete () : timeouts = { create; delete }

let aws_kinesisanalyticsv2_application_snapshot ?id ?timeouts
    ~application_name ~snapshot_name () :
    aws_kinesisanalyticsv2_application_snapshot =
  { application_name; id; snapshot_name; timeouts }

type t = {
  application_name : string prop;
  application_version_id : float prop;
  id : string prop;
  snapshot_creation_timestamp : string prop;
  snapshot_name : string prop;
}

let make ?id ?timeouts ~application_name ~snapshot_name __id =
  let __type = "aws_kinesisanalyticsv2_application_snapshot" in
  let __attrs =
    ({
       application_name =
         Prop.computed __type __id "application_name";
       application_version_id =
         Prop.computed __type __id "application_version_id";
       id = Prop.computed __type __id "id";
       snapshot_creation_timestamp =
         Prop.computed __type __id "snapshot_creation_timestamp";
       snapshot_name = Prop.computed __type __id "snapshot_name";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_kinesisanalyticsv2_application_snapshot
        (aws_kinesisanalyticsv2_application_snapshot ?id ?timeouts
           ~application_name ~snapshot_name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?timeouts ~application_name
    ~snapshot_name __id =
  let (r : _ Tf_core.resource) =
    make ?id ?timeouts ~application_name ~snapshot_name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
