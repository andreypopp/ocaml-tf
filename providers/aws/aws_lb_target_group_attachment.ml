(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_lb_target_group_attachment = {
  availability_zone : string prop option; [@option]
  id : string prop option; [@option]
  port : float prop option; [@option]
  target_group_arn : string prop;
  target_id : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_lb_target_group_attachment) -> ()

let yojson_of_aws_lb_target_group_attachment =
  (function
   | {
       availability_zone = v_availability_zone;
       id = v_id;
       port = v_port;
       target_group_arn = v_target_group_arn;
       target_id = v_target_id;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_target_id in
         ("target_id", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_target_group_arn
         in
         ("target_group_arn", arg) :: bnds
       in
       let bnds =
         match v_port with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "port", arg in
             bnd :: bnds
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
         match v_availability_zone with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "availability_zone", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_lb_target_group_attachment ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_lb_target_group_attachment

[@@@deriving.end]

let aws_lb_target_group_attachment ?availability_zone ?id ?port
    ~target_group_arn ~target_id () : aws_lb_target_group_attachment
    =
  { availability_zone; id; port; target_group_arn; target_id }

type t = {
  availability_zone : string prop;
  id : string prop;
  port : float prop;
  target_group_arn : string prop;
  target_id : string prop;
}

let make ?availability_zone ?id ?port ~target_group_arn ~target_id
    __id =
  let __type = "aws_lb_target_group_attachment" in
  let __attrs =
    ({
       availability_zone =
         Prop.computed __type __id "availability_zone";
       id = Prop.computed __type __id "id";
       port = Prop.computed __type __id "port";
       target_group_arn =
         Prop.computed __type __id "target_group_arn";
       target_id = Prop.computed __type __id "target_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_lb_target_group_attachment
        (aws_lb_target_group_attachment ?availability_zone ?id ?port
           ~target_group_arn ~target_id ());
    attrs = __attrs;
  }

let register ?tf_module ?availability_zone ?id ?port
    ~target_group_arn ~target_id __id =
  let (r : _ Tf_core.resource) =
    make ?availability_zone ?id ?port ~target_group_arn ~target_id
      __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
