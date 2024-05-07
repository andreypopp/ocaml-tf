(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_auditmanager_framework_share = {
  comment : string prop option; [@option]
  destination_account : string prop;
  destination_region : string prop;
  framework_id : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_auditmanager_framework_share) -> ()

let yojson_of_aws_auditmanager_framework_share =
  (function
   | {
       comment = v_comment;
       destination_account = v_destination_account;
       destination_region = v_destination_region;
       framework_id = v_framework_id;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_framework_id in
         ("framework_id", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_destination_region
         in
         ("destination_region", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_destination_account
         in
         ("destination_account", arg) :: bnds
       in
       let bnds =
         match v_comment with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "comment", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_auditmanager_framework_share ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_auditmanager_framework_share

[@@@deriving.end]

let aws_auditmanager_framework_share ?comment ~destination_account
    ~destination_region ~framework_id () :
    aws_auditmanager_framework_share =
  { comment; destination_account; destination_region; framework_id }

type t = {
  tf_name : string;
  comment : string prop;
  destination_account : string prop;
  destination_region : string prop;
  framework_id : string prop;
  id : string prop;
  status : string prop;
}

let make ?comment ~destination_account ~destination_region
    ~framework_id __id =
  let __type = "aws_auditmanager_framework_share" in
  let __attrs =
    ({
       tf_name = __id;
       comment = Prop.computed __type __id "comment";
       destination_account =
         Prop.computed __type __id "destination_account";
       destination_region =
         Prop.computed __type __id "destination_region";
       framework_id = Prop.computed __type __id "framework_id";
       id = Prop.computed __type __id "id";
       status = Prop.computed __type __id "status";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_auditmanager_framework_share
        (aws_auditmanager_framework_share ?comment
           ~destination_account ~destination_region ~framework_id ());
    attrs = __attrs;
  }

let register ?tf_module ?comment ~destination_account
    ~destination_region ~framework_id __id =
  let (r : _ Tf_core.resource) =
    make ?comment ~destination_account ~destination_region
      ~framework_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
