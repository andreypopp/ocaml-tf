(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]
  delete : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | { create = v_create; delete = v_delete } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_delete with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "delete", arg in
             bnd :: bnds
       in
       let bnds =
         match v_create with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "create", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : timeouts -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_timeouts

[@@@deriving.end]

type traffic_source = {
  identifier : string prop;
  type_ : string prop; [@key "type"]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : traffic_source) -> ()

let yojson_of_traffic_source =
  (function
   | { identifier = v_identifier; type_ = v_type_ } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_type_ in
         ("type", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_identifier in
         ("identifier", arg) :: bnds
       in
       `Assoc bnds
    : traffic_source -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_traffic_source

[@@@deriving.end]

type aws_autoscaling_traffic_source_attachment = {
  autoscaling_group_name : string prop;
  id : string prop option; [@option]
  timeouts : timeouts option;
  traffic_source : traffic_source list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_autoscaling_traffic_source_attachment) -> ()

let yojson_of_aws_autoscaling_traffic_source_attachment =
  (function
   | {
       autoscaling_group_name = v_autoscaling_group_name;
       id = v_id;
       timeouts = v_timeouts;
       traffic_source = v_traffic_source;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_traffic_source then bnds
         else
           let arg =
             (yojson_of_list yojson_of_traffic_source)
               v_traffic_source
           in
           let bnd = "traffic_source", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_option yojson_of_timeouts v_timeouts in
         ("timeouts", arg) :: bnds
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
           yojson_of_prop yojson_of_string v_autoscaling_group_name
         in
         ("autoscaling_group_name", arg) :: bnds
       in
       `Assoc bnds
    : aws_autoscaling_traffic_source_attachment ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_autoscaling_traffic_source_attachment

[@@@deriving.end]

let timeouts ?create ?delete () : timeouts = { create; delete }

let traffic_source ~identifier ~type_ () : traffic_source =
  { identifier; type_ }

let aws_autoscaling_traffic_source_attachment ?id ?timeouts
    ?(traffic_source = []) ~autoscaling_group_name () :
    aws_autoscaling_traffic_source_attachment =
  { autoscaling_group_name; id; timeouts; traffic_source }

type t = {
  tf_name : string;
  autoscaling_group_name : string prop;
  id : string prop;
}

let make ?id ?timeouts ?(traffic_source = []) ~autoscaling_group_name
    __id =
  let __type = "aws_autoscaling_traffic_source_attachment" in
  let __attrs =
    ({
       tf_name = __id;
       autoscaling_group_name =
         Prop.computed __type __id "autoscaling_group_name";
       id = Prop.computed __type __id "id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_autoscaling_traffic_source_attachment
        (aws_autoscaling_traffic_source_attachment ?id ?timeouts
           ~traffic_source ~autoscaling_group_name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?timeouts ?(traffic_source = [])
    ~autoscaling_group_name __id =
  let (r : _ Tf_core.resource) =
    make ?id ?timeouts ~traffic_source ~autoscaling_group_name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
