(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type details = { name : string prop; policy : string prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : details) -> ()

let yojson_of_details =
  (function
   | { name = v_name; policy = v_policy } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_policy in
         ("policy", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       `Assoc bnds
    : details -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_details

[@@@deriving.end]

type timeouts = {
  create : string prop option; [@option]
  update : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | { create = v_create; update = v_update } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_update with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "update", arg in
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

type aws_s3control_multi_region_access_point_policy = {
  account_id : string prop option; [@option]
  id : string prop option; [@option]
  details : details list; [@default []] [@yojson_drop_default ( = )]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : aws_s3control_multi_region_access_point_policy) -> ()

let yojson_of_aws_s3control_multi_region_access_point_policy =
  (function
   | {
       account_id = v_account_id;
       id = v_id;
       details = v_details;
       timeouts = v_timeouts;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_option yojson_of_timeouts v_timeouts in
         ("timeouts", arg) :: bnds
       in
       let bnds =
         if [] = v_details then bnds
         else
           let arg = (yojson_of_list yojson_of_details) v_details in
           let bnd = "details", arg in
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
         match v_account_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "account_id", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_s3control_multi_region_access_point_policy ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_s3control_multi_region_access_point_policy

[@@@deriving.end]

let details ~name ~policy () : details = { name; policy }
let timeouts ?create ?update () : timeouts = { create; update }

let aws_s3control_multi_region_access_point_policy ?account_id ?id
    ?timeouts ~details () :
    aws_s3control_multi_region_access_point_policy =
  { account_id; id; details; timeouts }

type t = {
  tf_name : string;
  account_id : string prop;
  established : string prop;
  id : string prop;
  proposed : string prop;
}

let make ?account_id ?id ?timeouts ~details __id =
  let __type = "aws_s3control_multi_region_access_point_policy" in
  let __attrs =
    ({
       tf_name = __id;
       account_id = Prop.computed __type __id "account_id";
       established = Prop.computed __type __id "established";
       id = Prop.computed __type __id "id";
       proposed = Prop.computed __type __id "proposed";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_s3control_multi_region_access_point_policy
        (aws_s3control_multi_region_access_point_policy ?account_id
           ?id ?timeouts ~details ());
    attrs = __attrs;
  }

let register ?tf_module ?account_id ?id ?timeouts ~details __id =
  let (r : _ Tf_core.resource) =
    make ?account_id ?id ?timeouts ~details __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
