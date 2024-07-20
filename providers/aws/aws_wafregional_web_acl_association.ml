(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = { create : string prop option [@option] }
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | { create = v_create } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
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

type aws_wafregional_web_acl_association = {
  id : string prop option; [@option]
  resource_arn : string prop;
  web_acl_id : string prop;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_wafregional_web_acl_association) -> ()

let yojson_of_aws_wafregional_web_acl_association =
  (function
   | {
       id = v_id;
       resource_arn = v_resource_arn;
       web_acl_id = v_web_acl_id;
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
         let arg = yojson_of_prop yojson_of_string v_web_acl_id in
         ("web_acl_id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_resource_arn in
         ("resource_arn", arg) :: bnds
       in
       let bnds =
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_wafregional_web_acl_association ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_wafregional_web_acl_association

[@@@deriving.end]

let timeouts ?create () : timeouts = { create }

let aws_wafregional_web_acl_association ?id ?timeouts ~resource_arn
    ~web_acl_id () : aws_wafregional_web_acl_association =
  { id; resource_arn; web_acl_id; timeouts }

type t = {
  tf_name : string;
  id : string prop;
  resource_arn : string prop;
  web_acl_id : string prop;
}

let make ?id ?timeouts ~resource_arn ~web_acl_id __id =
  let __type = "aws_wafregional_web_acl_association" in
  let __attrs =
    ({
       tf_name = __id;
       id = Prop.computed __type __id "id";
       resource_arn = Prop.computed __type __id "resource_arn";
       web_acl_id = Prop.computed __type __id "web_acl_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_wafregional_web_acl_association
        (aws_wafregional_web_acl_association ?id ?timeouts
           ~resource_arn ~web_acl_id ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?timeouts ~resource_arn ~web_acl_id __id
    =
  let (r : _ Tf_core.resource) =
    make ?id ?timeouts ~resource_arn ~web_acl_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
