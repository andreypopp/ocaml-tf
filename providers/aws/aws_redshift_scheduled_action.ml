(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type target_action__pause_cluster = {
  cluster_identifier : string prop;  (** cluster_identifier *)
}
[@@deriving yojson_of]
(** target_action__pause_cluster *)

type target_action__resize_cluster = {
  classic : bool prop option; [@option]  (** classic *)
  cluster_identifier : string prop;  (** cluster_identifier *)
  cluster_type : string prop option; [@option]  (** cluster_type *)
  node_type : string prop option; [@option]  (** node_type *)
  number_of_nodes : float prop option; [@option]
      (** number_of_nodes *)
}
[@@deriving yojson_of]
(** target_action__resize_cluster *)

type target_action__resume_cluster = {
  cluster_identifier : string prop;  (** cluster_identifier *)
}
[@@deriving yojson_of]
(** target_action__resume_cluster *)

type target_action = {
  pause_cluster : target_action__pause_cluster list;
  resize_cluster : target_action__resize_cluster list;
  resume_cluster : target_action__resume_cluster list;
}
[@@deriving yojson_of]
(** target_action *)

type aws_redshift_scheduled_action = {
  description : string prop option; [@option]  (** description *)
  enable : bool prop option; [@option]  (** enable *)
  end_time : string prop option; [@option]  (** end_time *)
  iam_role : string prop;  (** iam_role *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  schedule : string prop;  (** schedule *)
  start_time : string prop option; [@option]  (** start_time *)
  target_action : target_action list;
}
[@@deriving yojson_of]
(** aws_redshift_scheduled_action *)

let target_action__pause_cluster ~cluster_identifier () :
    target_action__pause_cluster =
  { cluster_identifier }

let target_action__resize_cluster ?classic ?cluster_type ?node_type
    ?number_of_nodes ~cluster_identifier () :
    target_action__resize_cluster =
  {
    classic;
    cluster_identifier;
    cluster_type;
    node_type;
    number_of_nodes;
  }

let target_action__resume_cluster ~cluster_identifier () :
    target_action__resume_cluster =
  { cluster_identifier }

let target_action ~pause_cluster ~resize_cluster ~resume_cluster () :
    target_action =
  { pause_cluster; resize_cluster; resume_cluster }

let aws_redshift_scheduled_action ?description ?enable ?end_time ?id
    ?start_time ~iam_role ~name ~schedule ~target_action () :
    aws_redshift_scheduled_action =
  {
    description;
    enable;
    end_time;
    iam_role;
    id;
    name;
    schedule;
    start_time;
    target_action;
  }

type t = {
  description : string prop;
  enable : bool prop;
  end_time : string prop;
  iam_role : string prop;
  id : string prop;
  name : string prop;
  schedule : string prop;
  start_time : string prop;
}

let make ?description ?enable ?end_time ?id ?start_time ~iam_role
    ~name ~schedule ~target_action __id =
  let __type = "aws_redshift_scheduled_action" in
  let __attrs =
    ({
       description = Prop.computed __type __id "description";
       enable = Prop.computed __type __id "enable";
       end_time = Prop.computed __type __id "end_time";
       iam_role = Prop.computed __type __id "iam_role";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       schedule = Prop.computed __type __id "schedule";
       start_time = Prop.computed __type __id "start_time";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_redshift_scheduled_action
        (aws_redshift_scheduled_action ?description ?enable ?end_time
           ?id ?start_time ~iam_role ~name ~schedule ~target_action
           ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?enable ?end_time ?id
    ?start_time ~iam_role ~name ~schedule ~target_action __id =
  let (r : _ Tf_core.resource) =
    make ?description ?enable ?end_time ?id ?start_time ~iam_role
      ~name ~schedule ~target_action __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
