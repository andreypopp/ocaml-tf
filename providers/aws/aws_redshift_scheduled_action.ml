(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type target_action__pause_cluster = {
  cluster_identifier : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : target_action__pause_cluster) -> ()

let yojson_of_target_action__pause_cluster =
  (function
   | { cluster_identifier = v_cluster_identifier } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_cluster_identifier
         in
         ("cluster_identifier", arg) :: bnds
       in
       `Assoc bnds
    : target_action__pause_cluster ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_target_action__pause_cluster

[@@@deriving.end]

type target_action__resize_cluster = {
  classic : bool prop option; [@option]
  cluster_identifier : string prop;
  cluster_type : string prop option; [@option]
  node_type : string prop option; [@option]
  number_of_nodes : float prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : target_action__resize_cluster) -> ()

let yojson_of_target_action__resize_cluster =
  (function
   | {
       classic = v_classic;
       cluster_identifier = v_cluster_identifier;
       cluster_type = v_cluster_type;
       node_type = v_node_type;
       number_of_nodes = v_number_of_nodes;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_number_of_nodes with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "number_of_nodes", arg in
             bnd :: bnds
       in
       let bnds =
         match v_node_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "node_type", arg in
             bnd :: bnds
       in
       let bnds =
         match v_cluster_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "cluster_type", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_cluster_identifier
         in
         ("cluster_identifier", arg) :: bnds
       in
       let bnds =
         match v_classic with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "classic", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : target_action__resize_cluster ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_target_action__resize_cluster

[@@@deriving.end]

type target_action__resume_cluster = {
  cluster_identifier : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : target_action__resume_cluster) -> ()

let yojson_of_target_action__resume_cluster =
  (function
   | { cluster_identifier = v_cluster_identifier } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_cluster_identifier
         in
         ("cluster_identifier", arg) :: bnds
       in
       `Assoc bnds
    : target_action__resume_cluster ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_target_action__resume_cluster

[@@@deriving.end]

type target_action = {
  pause_cluster : target_action__pause_cluster list;
  resize_cluster : target_action__resize_cluster list;
  resume_cluster : target_action__resume_cluster list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : target_action) -> ()

let yojson_of_target_action =
  (function
   | {
       pause_cluster = v_pause_cluster;
       resize_cluster = v_resize_cluster;
       resume_cluster = v_resume_cluster;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_target_action__resume_cluster
             v_resume_cluster
         in
         ("resume_cluster", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_target_action__resize_cluster
             v_resize_cluster
         in
         ("resize_cluster", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_target_action__pause_cluster
             v_pause_cluster
         in
         ("pause_cluster", arg) :: bnds
       in
       `Assoc bnds
    : target_action -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_target_action

[@@@deriving.end]

type aws_redshift_scheduled_action = {
  description : string prop option; [@option]
  enable : bool prop option; [@option]
  end_time : string prop option; [@option]
  iam_role : string prop;
  id : string prop option; [@option]
  name : string prop;
  schedule : string prop;
  start_time : string prop option; [@option]
  target_action : target_action list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_redshift_scheduled_action) -> ()

let yojson_of_aws_redshift_scheduled_action =
  (function
   | {
       description = v_description;
       enable = v_enable;
       end_time = v_end_time;
       iam_role = v_iam_role;
       id = v_id;
       name = v_name;
       schedule = v_schedule;
       start_time = v_start_time;
       target_action = v_target_action;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_target_action v_target_action
         in
         ("target_action", arg) :: bnds
       in
       let bnds =
         match v_start_time with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "start_time", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_schedule in
         ("schedule", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
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
         let arg = yojson_of_prop yojson_of_string v_iam_role in
         ("iam_role", arg) :: bnds
       in
       let bnds =
         match v_end_time with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "end_time", arg in
             bnd :: bnds
       in
       let bnds =
         match v_enable with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "enable", arg in
             bnd :: bnds
       in
       let bnds =
         match v_description with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "description", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_redshift_scheduled_action ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_redshift_scheduled_action

[@@@deriving.end]

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

let target_action ?(pause_cluster = []) ?(resize_cluster = [])
    ?(resume_cluster = []) () : target_action =
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
  tf_name : string;
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
       tf_name = __id;
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
