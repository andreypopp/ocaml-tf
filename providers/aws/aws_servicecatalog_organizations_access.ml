(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = { read : string prop option [@option] }
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | { read = v_read } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_read with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "read", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : timeouts -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_timeouts

[@@@deriving.end]

type aws_servicecatalog_organizations_access = {
  enabled : bool prop;
  id : string prop option; [@option]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_servicecatalog_organizations_access) -> ()

let yojson_of_aws_servicecatalog_organizations_access =
  (function
   | { enabled = v_enabled; id = v_id; timeouts = v_timeouts } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
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
         let arg = yojson_of_prop yojson_of_bool v_enabled in
         ("enabled", arg) :: bnds
       in
       `Assoc bnds
    : aws_servicecatalog_organizations_access ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_servicecatalog_organizations_access

[@@@deriving.end]

let timeouts ?read () : timeouts = { read }

let aws_servicecatalog_organizations_access ?id ?timeouts ~enabled ()
    : aws_servicecatalog_organizations_access =
  { enabled; id; timeouts }

type t = { tf_name : string; enabled : bool prop; id : string prop }

let make ?id ?timeouts ~enabled __id =
  let __type = "aws_servicecatalog_organizations_access" in
  let __attrs =
    ({
       tf_name = __id;
       enabled = Prop.computed __type __id "enabled";
       id = Prop.computed __type __id "id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_servicecatalog_organizations_access
        (aws_servicecatalog_organizations_access ?id ?timeouts
           ~enabled ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?timeouts ~enabled __id =
  let (r : _ Tf_core.resource) = make ?id ?timeouts ~enabled __id in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
