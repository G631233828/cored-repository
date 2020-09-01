package com.inred.media.service.impl;

import org.apache.commons.lang.StringUtils;
import org.springframework.stereotype.Service;

import com.inred.media.pojo.Resources;
import com.inred.media.service.ResourcesServiceI;

@Service
public class ResourcesServiceImpl extends BaseServiceImpl<Resources>  implements ResourcesServiceI {
	

	/**
	 * 访问量+1
	 */
	public void updatedownloads(final String id) {

		new Thread(new Runnable() {
			public void run() {
				// TODO Auto-generated method stub
				updatedownloadsByThread(id);
			}
		}).start();

	}

	public synchronized void updatedownloadsByThread(String id) {
		
		Resources resources = this.findOneById(id, Resources.class);
		
		if(resources!=null) {
			resources.setDownloadsNumber(resources.getDownloadsNumber()+1);
			this.save(resources);
		}
	}
	
	
	
	

}
