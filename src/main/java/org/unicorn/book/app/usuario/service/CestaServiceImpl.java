package org.unicorn.book.app.usuario.service;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
@Transactional(readOnly = true)
public class CestaServiceImpl implements CestaService{
}
