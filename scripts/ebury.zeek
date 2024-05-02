module SSH;

export {
  redef enum Notice::Type += {
    Ebury_Victim
  };
}

event SSH::log_ssh(rec: SSH::Info){
  if(ends_with(rec$client,"=")){
    NOTICE([$note=Ebury_Victim, $src=rec$id$orig_h,
      $dst=rec$id$resp_h, $msg=rec$client,
      $identifier=cat(rec$server,rec$id$resp_h)]);
  }
}

